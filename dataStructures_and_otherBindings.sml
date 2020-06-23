(* FUNCTIONS *)

fun pow(x: int, y: int)=
    if y = 0
    then 1
    else x * pow (x, y-1) (* int*int->int *)
		 
val z = pow(2,2+2);

(* binding of pow = int * int -> int {* separates bindings of its arguments..its not a 'multiplicatiopn'} *)
(* since functions are also bindings, hence they cannot refer later functions..so helper functions must come earlier *)
(* Evaluation of function: function is already a value, no evaluation until called. Adds say an x0 to the environment *)
(* Type checking: Adds binding x0:(t1 *t2*t3...)->t *)
(* arguments are in static environment only for the body of function *)
(* In SML there isn't a way to have functions that take varaiable number of arguments *)


(* PAIRS AND TUPLES *)

(* tuples: 'fixed' number of pieces, may have 'different' types *)

(* pairs: 2-tuples *)
(* we need a way to 'build' pairs, and a way to 'access' the pieces *)
(* type checking (ta * tb) *)
(* #1 has type ta, #2 has type tb *)

fun swap (pr: int*bool)=
    (#2 pr, #1 pr)

(* (int*int) * (int*int) ->int *)
fun sum_two _pairs(pr1: int*int, pr2: int*int ) =
    (#1 pr1) + (#2 pr1) + (#1 pr2) + (#2 pr2)

fun div_mod (x: int, y:int)=
    (x div y, x mod y)

(* generalised pair with n pieces = tuple *)

val x1 = (7, (true, 9)) (* int * (bool * int) *)
val x2 = #1 (#2 x1); (* bool *)


(* LISTS *)

(* lists can have "any" number of elements, but "same" data type *)

val l1 = []; (* empty list *)
val l2 = [7, 8, 9];
val l3 = 5::l2; (* concatenates to front *)
(* val l4 = l3::l2 ---> error: list of integers, here l2, cannot hold 'list of integers', rather inmtergers' *)
val l5 = [6]::[[7,5],[8,9,10]];
