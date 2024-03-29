(* $I1: Unison file synchronizer: src/checksum.mli $ *)
(* $I2: Last modified by zheyang on Wed, 12 Dec 2001 02:26:21 -0500 $ *)
(* $I3: Copyright 1999-2004 (see COPYING for details) $ *)

type t = int
type u = int array

val init : int             (* blockSize *)
        -> u               (* pre-computed table *) 

val substring : string
             -> int        (* offset in string *)
             -> int        (* substring length *)
             -> t

val roll : u               (* string length *)
        -> t               (* previous checksum *)
        -> char            (* outgoing char *)
        -> char            (* incoming char *)
        -> t
