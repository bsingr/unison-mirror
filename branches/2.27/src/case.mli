(* Unison file synchronizer: src/case.mli *)
(* Copyright 1999-2007 (see COPYING for details) *)

val insensitive : unit -> bool
val modeDescription : unit -> string

val normalize : string -> string

val init : bool -> unit
