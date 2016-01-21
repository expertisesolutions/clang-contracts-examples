
Require Import Classical.

Section teste.
  Variable A : Type.
  Variable self : A.
  Hypothesis rule1 : ~(empty self).
  Theorem theorem : ~(empty self).
  Qed.    

(* Section teste. *)

(*   Variable A : Type. *)
(*   Variable Empty : A -> Prop. *)
(*   Variable Size: A -> nat. *)
(*   Variable A_instance: A. *)
(*   Variable N: nat. *)
(*   Hypothesis A_instance_not_clear: (Size A_instance) <> 0. *)
(*   Hypothesis Empty_if_size_is_zero_and_not_otherwise: ((Size A_instance) = 0 <-> (Empty A_instance)) /\ ((Size A_instance <> 0) <-> ~(Empty A_instance)). *)
  
(*   Theorem pop_is_valid: ~ (Empty A_instance). *)
(*     intro. *)
(*     tauto. *)
(*   Qed. *)

  