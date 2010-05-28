(* Unison file synchronizer: src/pixmaps.ml *)
(* Copyright 1999-2010, Benjamin C. Pierce 

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*)


let copyAB color = [|
(* width height num_colors chars_per_pixel *)
"    28    14        2            1";
(* colors *)
". c None";
"# c #" ^ color;
(* pixels *)
"............................";
"............................";
"............................";
"......................#.....";
".....................###....";
"......................####..";
"..##########################";
"..##########################";
"......................####..";
".....................###....";
"......................#.....";
"............................";
"............................";
"............................"
|]

let copyBA color = [|
(* width height num_colors chars_per_pixel *)
"    28    14        2            1";
(* colors *)
". c None";
"# c #" ^ color;
(* pixels *)
"............................";
"............................";
"............................";
".....#......................";
"....###.....................";
"..####......................";
"##########################..";
"##########################..";
"..####......................";
"....###.....................";
".....#......................";
"............................";
"............................";
"............................"
|]

let mergeLogo color = [|
(* width height num_colors chars_per_pixel *)
"    28    14        2            1";
(* colors *)
". c None";
"# c #" ^ color;
(* pixels *)
"............................";
"............................";
".........##......##.........";
".........###....###.........";
".........####..####.........";
".........##.####.##.........";
".........##..##..##.........";
".........##......##.........";
".........##......##.........";
".........##......##.........";
".........##......##.........";
".........##......##.........";
"............................";
"............................"
|]

let ignore color = [|
(* width height num_colors chars_per_pixel *)
"    20    14        2            1";
(* colors *)
"  c None";
"* c #" ^ color;
(* pixels *)
"                    ";
"       *****        ";
"      **   **       ";
"      **   **       ";
"           **       ";
"          **        ";
"          **        ";
"         **         ";
"        **          ";
"                    ";
"                    ";
"        **          ";
"        **          ";
"                    "
|]

let success = [|
(* width height num_colors chars_per_pixel *)
"    20    14        2            1";
(* colors *)
"  c None";
"* c #00dd00";
(* pixels *)
"                    "; 
"                    ";
"             ***    ";
"           ******   ";
"          ***** *   ";
"         ****       ";
"   ***   ***        ";
"    *** **          ";
"    ******          ";
"      ***           ";
"       **           ";
"       **           ";
"       *            ";
"                    "
|]

let failure = [|
(* width height num_colors chars_per_pixel *)
"    20    14        2            1";
(* colors *)
"  c None";
"* c #ff0000";
(* pixels *)
"     *        *     "; 
"    ***      **     ";
"     ***    ***     ";
"      **    **      ";
"       **  **       ";
"       *****        ";
"        ****        ";
"        ***         ";
"       *****        ";
"       ** **        ";
"      **   **       ";
"     **    ***      ";
"    ***     **      ";
"   ***              "
|]


(***********************************************************************)
(*        Some alternative arrow shapes (not currently used)...        *)
(***********************************************************************)

let copyAB_asym = [|
(* width height num_colors chars_per_pixel *)
"    28    14        2            1";
(* colors *)
". c None";
"# c #3cf834";
(* pixels *)
"............................";
"............................";
"............................";
".......................#....";
"......................###...";
".......................####.";
"..##########################";
"..##########################";
".........................##.";
".......................####.";
"......................###...";
"............................";
"............................";
"............................"
|]

let copyABblack_asym = [|
(* width height num_colors chars_per_pixel *)
"    28    14        2            1";
(* colors *)
". c None";
"# c #000000";
(* pixels *)
"............................";
"............................";
"............................";
".......................#....";
"......................###...";
".......................####.";
"..##########################";
"..##########################";
".........................##.";
".......................####.";
"......................###...";
"............................";
"............................";
"............................"
|]

let copyBA_asym = [|
(* width height num_colors chars_per_pixel *)
"    28    14        2            1";
(* colors *)
". c None";
"# c #3cf834";
(* pixels *)
"............................";
"............................";
"............................";
".....#......................";
"....###.....................";
"..####......................";
"##########################..";
"##########################..";
"..##........................";
"..####......................";
"....###.....................";
"............................";
"............................";
"............................"
|]

let copyBAblack_asym = [|
(* width height num_colors chars_per_pixel *)
"    28    14        2            1";
(* colors *)
". c None";
"# c #000000";
(* pixels *)
"............................";
"............................";
"............................";
".....#......................";
"....###.....................";
"..####......................";
"##########################..";
"##########################..";
"..##........................";
"..####......................";
"....###.....................";
"............................";
"............................";
"............................"
|]

(***********************************************************************)
(*                      Busy-Interactive mous pointer                  *)
(***********************************************************************)

let left_ptr_watch = "\
\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\
\x0c\x00\x00\x00\x1c\x00\x00\x00\x3c\x00\x00\x00\
\x7c\x00\x00\x00\xfc\x00\x00\x00\xfc\x01\x00\x00\
\xfc\x3b\x00\x00\x7c\x38\x00\x00\x6c\x54\x00\x00\
\xc4\xdc\x00\x00\xc0\x44\x00\x00\x80\x39\x00\x00\
\x80\x39\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\
\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\
\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\
\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\
\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\
\x00\x00\x00\x00\x00\x00\x00\x00"


(***********************************************************************)
(*                          Unison icon                                *)
(***********************************************************************)

let icon_data =
"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\001\019\020\006\134\
 \000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\
 \019\020\006\134\000\000\000\001\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\00022\016\152\159�4�\
 12\016\153\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\00022\016\156\
 \159�4�12\016\148\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000/0\015w��9���R�\
 ��:�00\016x\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\00000\016|��;�\
 ��R���8�//\015s\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 *+\014V\145\1470���R���R�\
 ��R�\145\1470�**\014V\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000+,\014Z\149\1511���R�\
 ��R���R�\141\143.�()\013Q\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\030\031\n6\
 rt%���R���R���R�\
 ��R���R�su&�\030\030\n6\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \"#\011:vx'���R���R�\
 ��R���R���R�op$�\
 \029\029\t2\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\015\015\005\030XZ\029�\
 ��R���R���R���R�\
 ��R���R���R�YZ\029�\
 \015\015\005\030\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\014\014\004 \
 \\]\030���R���R���R�\
 ��R���R���R���Q�\
 VW\028�\008\008\003\027\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\014FG\023���P�\
 ��R���R���R���R�\
 ��R���R���R���P�\
 GH\023�\000\000\000\014\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\015IJ\024�\
 ��P���R���R���R�\
 ��R���R���R���R�\
 ��N�EF\022�\000\000\000\012\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\005;<\019���L���R�\
 ��R���R���R���R�\
 ��R���R���R���R�\
 ��L�;<\019�\000\000\000\005\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\006<=\019���L�\
 ��Q���Q���Q���P�\
 ��P���P���P���P�\
 ��P���I�99\018�\000\000\000\004\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 45\017���G���R���R�\
 ��R���R���R���R�\
 ��R���R���R���R�\
 ��R���G�45\017�\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\00155\017���F���P�\
 ��P���O���O���O�\
 ��O���O���O���N�\
 ��N���N���B�42\016�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\020\020\006\133\
 IJ\024�~\128)�~\128)���A�\
 ��R���R���Q���Q�\
 ��Q���Q���Q���<�\
 ~~(�}}(�II\023�\020\020\006\134\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \020\020\006\138KI\023�}{'�}z'�\
 ��?���N���M���M�\
 ��M���M���M���M�\
 ��6�}x&�}x&�FC\021�\
 \020\019\006\129\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\014\
 \000\000\000\015\000\000\000\015\000\000\000\028}}(�\
 ��P���P���O���O�\
 ��O���O���O�db �\
 \000\000\000\015\000\000\000\015\000\000\000\015\000\000\000\014\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\014\000\000\000\015\000\000\000\015\000\000\000 \
 \131}(���L���K���K�\
 ��K���K���K���K�\
 ^Y\028�\000\000\000\015\000\000\000\015\000\000\000\015\
 \000\000\000\013\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014}z'�\
 ��N���N���M���M�\
 ��M���M���M�db\031�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 \130{'���J���I���I�\
 ��I���I���I���I�\
 _Y\028�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014}x'�\
 ��M���M���L���L�\
 ��L���L���L�d_\031�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 \130x&���I���H���H�\
 ��H���H���H���H�\
 _W\027�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014|v&�\
 ��K���K���J���J�\
 ��J���J���J�d]\030�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 \130v%���G���F���F�\
 ��F���F���F���F�\
 _U\027�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014|t%�\
 ��I���I���H���H�\
 ��H���H���H�d\\\029�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 \130s$���E���D���D�\
 ��D���D���D���D�\
 _T\026�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014|q$�\
 ��G���G���F���F�\
 ��F���F���F�dZ\028�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 \129q#���C���B���B�\
 ��B���B���B���B�\
 ^R\025�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014|o#�\
 ��F���F���E���E�\
 ��E���E���E�dX\028�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 \129o#���B���A���A�\
 ��A���A���A���A�\
 ^P\025�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014{m\"�\
 ��D���D���C���C�\
 ��C���C���C�cV\027�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 \129l\"���@���?���?�\
 ��?���?���?���?�\
 ^N\024�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014{j!�\
 ��B���B���A���A�\
 ��A���A���A�cU\026�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 \129j!���>���=���=�\
 ��=���=���=���=�\
 ^L\023�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014{h �\
 ��@���@���?���?�\
 ��?���?���?�cR\026�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 \128g\031���<���;���;�\
 ��;���;���;���;�\
 ^K\022�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014{f �\
 ��?���>���>���>�\
 ��>���>���=�cP\025�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 \128e\030���:���:���9�\
 ��9��9��9��9�\
 ^I\022�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014{d\031�\
 ��=���=���<���<�\
 ��<���<���<�cO\024�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 \128c\030��9��8��8�\
 �8��8��8��8�\
 ^G\021�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014za\030�\
 ��;���;���:���:�\
 ��:��:��:�bM\024�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 \128`\029��7��6��6�\
 �6��6��6��6�\
 ]E\020�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014z_\029�\
 ��9��9��8��8�\
 �8��8��8�bL\023�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 \127^\028��5��4��4�\
 �4��4��4��4�\
 ]C\020�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014z]\028�\
 �7��7��6��6�\
 �6��6��6�bJ\022�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 \127[\027��3��2��2�\
 �2��2��2��2�\
 ]B\019�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014zZ\027�\
 �6��6��5��5�\
 �5��5��5�bH\022�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 ~Y\026��2��1��1�\
 �1��1��1��1�\
 ]@\018�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014yX\026�\
 �4��4��3��3�\
 �3��3��3�bF\021�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 ~W\025��0��/��/�\
 �/��/��/��/�\
 \\>\018�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014yV\025�\
 �2��2��1��1�\
 �1��1��1�bD\020�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 ~T\024��.��\159-��\159-�\
 �\158-��\158-��\157-��\157-�\
 \\<\017�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\014yT\024�\
 �0��0��/��/�\
 �/��/��/�aB\019�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 ~R\023��\156,��\155+��\155+�\
 �\154+��\154+��\153+��\153+�\
 \\;\016�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\012uO\023�\
 �/��.��.��.�\
 �.��\159.��\159-�b@\018�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\
 }O\022��\151*��\150*��\150*�\
 �\149*��\149)��\148)��\147)�\
 [7\016�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\003jE\020�\
 �\157-��\156,��\156,��\155,�\
 �\155,��\154,��\154,�b?\018�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\027\
 \134R\023��\144'��\143'��\142'�\
 �\141&��\140&��\140&��\139%�\
 W3\014�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000d@\018�\
 �\152+��\152+��\152*��\151*�\
 �\151*��\150*��\150*�d>\017�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000)\
 \151V\023��\135$��\134$��\133#�\
 �\132#��\131#��\130\"��\129\"�\
 U.\012�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000a<\017�\
 �\147)��\146)��\145(��\144(�\
 �\144(��\143'��\142'�d<\016�\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\0008\
 �Y\023��} ��| ��{ �\
 �{\031��z\031��y\031��x\030�\
 R)\n�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000^7\015�\
 �\138%��\137%��\136$��\135$�\
 �\134$��\133#��\132#�h:\015�\
 \000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\016\008\002L\
 �Z\023��s\028��s\028��r\028�\
 �q\027��p\027��o\027��n\026�\
 O$\t�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000Z1\013�\
 �\129!��\128!��\127 ��~ �\
 �} ��|\031��{\031�\129C\017�\
 \000\000\000\023\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\"\016\004d\
 �Y\021��j\024��j\024��i\024�\
 �h\023��g\023��f\023��e\022�\
 K \007�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000M'\n�\
 �w\030��v\030��u\029��t\029�\
 �s\029��r\028��q\028�\158L\019�\
 \000\000\0002\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000*\018\004z\
 �W\020��`\021��`\021��_\021�\
 �^\020��]\020��\\\020��[\019�\
 >\024\005�\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000;\028\007�\
 �n\026��m\026��l\025��k\025�\
 �j\025��i\024��h\024��a\022�\
 3\022\005\158\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000/\018\004�\
 �U\017��W\017��W\017��V\017�\
 �U\016��T\016��S\016��P\015�\
 /\016\003\153\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000-\020\004\139\
 �]\021��c\022��b\021��a\021�\
 �a\021��`\020��_\020��^\020�\
 ]%\008�\000\000\000\014\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\006X\030\005�\
 �O\014��N\013��M\013��L\013�\
 �L\012��K\012��J\012��>\t�\
 %\012\002l\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\017\007\001N\
 �F\015��Z\019��Y\018��X\018�\
 �W\018��V\017��U\017��U\017�\
 �N\015�9\020\004�\000\000\000\016\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\002&\012\002��=\n�\
 �E\011��D\n��D\n��C\n�\
 �B\t��A\t��@\t�\155*\005�\
 \004\001\0005\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\n\
 _!\006��Q\015��P\014��O\014�\
 �N\014��M\013��L\013��L\013�\
 �K\012��F\011�<\019\003�\016\005\001X\
 \000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \008\002\000\0261\013\002��5\006��=\007�\
 �<\007��;\006��;\006��:\006�\
 �9\005��8\005��7\005�O\019\001�\
 \000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 2\016\002��D\n��F\011��E\n�\
 �E\n��D\t��C\t��B\t�\
 �A\008��@\008��?\008��0\005�\
 5\014\002�6\014\002�.\012\001\157(\n\001w\
 \030\007\001^-\011\001\142.\011\001�N\019\002�\
 \139!\002��5\004��5\004��4\003�\
 �3\003��2\002��1\002��0\002�\
 �0\001��/\001��+\001�/\t\000\148\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \t\002\000\024X\024\003��=\007��<\006�\
 �;\006��:\006��9\005��9\005�\
 �8\005��7\004��6\004��5\004�\
 �4\003��3\003��2\003��+\002�\
 �'\002��-\002��/\001��.\001�\
 �-\001��,\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000�T\016\000�\000\000\000\020\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000%\008\001U\153#\002��3\003�\
 �2\003��1\002��0\002��/\001�\
 �/\001��.\001��-\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000�\145\027\000�%\007\000U\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\0003\n\000p\128\024\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 \152\029\000�6\n\000y\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\030\006\000J\
 j\020\000��*\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000�x\022\000�\
 &\007\000_\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\0211\t\000�k\020\000��(\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �)\000�w\022\000�7\n\000�\017\003\000$\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\n4\n\000\147\
 G\013\000�_\018\000ݣ\031\000��&\000�\
 �+\000��+\000��+\000��+\000�\
 �+\000��+\000��+\000��+\000�\
 �(\000��!\000�o\021\000�O\015\000�\
 9\011\000�\000\000\000\018\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\002\003\001\000<)\008\000z\
 -\t\000\1502\t\000�:\011\000�B\012\000�\
 H\014\000�@\012\000�9\011\000�.\t\000�\
 ,\008\000\136\004\001\000L\000\000\000\007\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
