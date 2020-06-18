(* This is a comment. This is our first program. It is about variable bindings *)
(* Variable binding ----> val x = e; --> keyword variable = expression; *)
(* syntax: How we write it *)
(* semantics: What it means. Here, <1> typechecking (before the program runs ie static env) and <2> evaluation (as program runs ie dynamic env) *)

(*ML is a typeface language, hence it is type checked first ie all the comments about static environmnet *)

val x = 34;
(* static environment: x: int *)
(* dynamic environment: x--> 34 *)

val y = 17;
(* static environment: x: int, y:int *)
(* dynamic environment: x--> 34, y-->17 *)

val z = (x+y) + (y+2);
(* static environment: x: int, y:int, z:int *)
(* z can use earlier bindings. We cannot use earlier bindings *)
(* dynamic environment: x--> 34, y-->17, z-->70 *)


val abs_of_z = if z < 0 then 0-z else z; (* expression after if --> bool *) (* int *)
(* both the expression after 'then' and 'else' should have same type, here int *)
(* static environment abs_of_z: int *)
(* dynamic environment : abs_of_z -->70 *)

val abs_of_z_simpler = abs z;
(* called abs function *)

(* RULES OF EXPRESSION *)
(* Expressions can get arbitrarily large as they can have subexpressions which can have subexpressions and so on *)
(* expression has: 1) Syntax 2) Type checking rules 3) Evaluation rules *) 
