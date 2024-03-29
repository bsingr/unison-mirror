(* $I1: Unison file synchronizer: src/fileutil.ml $ *)
(* $I2: Last modified by zheyang on Wed, 12 Dec 2001 02:26:21 -0500 $ *)
(* $I3: Copyright 1999-2004 (see COPYING for details) $ *)

(* Convert backslashes in a string to forward slashes.  Useful in Windows.   *)
let bs2fs s0 =
  try
    ignore(String.index s0 '\\'); (* avoid alloc if possible *)
    let n = String.length s0 in
    let s = String.create n in
    for i = 0 to n-1 do
      let c = String.get s0 i in
      if c = '\\'
      then String.set s i '/'
      else String.set s i c
    done;
    s
  with Not_found -> s0

let rec removeTrailingSlashes s =
  let len = String.length s in
  if len>0 && String.get s (len-1) = '/'
  then removeTrailingSlashes (String.sub s 0 (len-1))
  else s
