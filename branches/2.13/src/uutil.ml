(* $I1: Unison file synchronizer: src/uutil.ml $ *)
(* $I2: Last modified by vouillon on Thu, 25 Nov 2004 16:01:48 -0500 $ *)
(* $I3: Copyright 1999-2004 (see COPYING for details) $ *)

(*****************************************************************************)
(*                      Unison name and version                              *)
(*****************************************************************************)

let myName = ProjectInfo.myName

let myVersion = ProjectInfo.myVersion

let myMajorVersion = ProjectInfo.myMajorVersion

(*****************************************************************************)
(*                             HASHING                                       *)
(*****************************************************************************)

let hash2 x y = (17 * x + 257 * y) land 0x3FFFFFFF

(*****************************************************************************)
(*                             File sizes                                    *)
(*****************************************************************************)

module type FILESIZE = sig
  type t
  val zero : t
  val dummy : t
  val add : t -> t -> t
  val sub : t -> t -> t
  val toFloat : t -> float
  val toString : t -> string
  val ofInt : int -> t
  val ofInt64 : int64 -> t
  val toInt : t -> int
  val toInt64 : t -> int64
  val fromStats : Unix.LargeFile.stats -> t
  val hash : t -> int
  val percentageOfTotalSize : t -> t -> float
end

module Filesize : FILESIZE = struct
  type t = int64
  let zero = Int64.zero
  let dummy = Int64.minus_one
  let add = Int64.add
  let sub = Int64.sub
  let toFloat = Int64.to_float
  let toString = Int64.to_string
  let ofInt x = Int64.of_int x
  let ofInt64 x = x
  let toInt x = Int64.to_int x
  let toInt64 x = x
  let fromStats st = st.Unix.LargeFile.st_size
  let hash x =
    hash2 (Int64.to_int x) (Int64.to_int (Int64.shift_right_logical x 31))
  let percentageOfTotalSize current total =
    let total = toFloat total in
    if total = 0. then 100.0 else
    toFloat current *. 100.0 /. total
end

(*****************************************************************************)
(*                       File tranfer progress display                       *)
(*****************************************************************************)

module File =
  struct
    type t = int
    let dummy = -1
    let ofLine l = l
    let toLine l = assert (l <> dummy); l
  end

let progressPrinter = ref (fun _ _ _ -> ())
let setProgressPrinter p = progressPrinter := p
let showProgress i bytes ch =
  if i <> File.dummy then !progressPrinter i bytes ch

(*****************************************************************************)
(*               Copy bytes from one file_desc to another                    *)
(*****************************************************************************)

let bufsize = 16384
let bufsizeFS = Filesize.ofInt bufsize
let buf = String.create bufsize

let readWrite source target notify =
  let len = ref 0 in
  let rec read () =
    let n = input source buf 0 bufsize in
    if n > 0 then begin
      output target buf 0 n;
      len := !len + n;
      if !len > 100 * 1024 then begin
        notify !len;
        len := 0
      end;
      read ()
    end else if !len > 0 then
      notify !len
  in
  Util.convertUnixErrorsToTransient "readWrite" read

let readWriteBounded source target len notify =
  let l = ref 0 in
  let rec read len =
    if len > Filesize.zero then begin
      let n =
        input source buf 0
          (if len > bufsizeFS then bufsize else Filesize.toInt len)
      in
      if n > 0 then begin
        let w = output target buf 0 n in
        l := !l + n;
        if !l > 100 * 1024 then begin
          notify !l;
          l := 0
        end;
        read (Filesize.sub len (Filesize.ofInt n))
      end else if !l > 0 then
        notify !l
    end else if !l > 0 then
      notify !l
  in
  Util.convertUnixErrorsToTransient "readWrite" (fun () -> read len)
