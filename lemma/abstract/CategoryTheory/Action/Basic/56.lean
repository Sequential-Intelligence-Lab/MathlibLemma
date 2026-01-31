import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


universe u

open CategoryTheory

-- PUnit action equivalence lemmas

theorem Action.actionPunitEquivalence_functor_obj
    {V : Type u} [Category V]
    (X : Action V PUnit) :
    (Action.actionPunitEquivalence (V := V)).functor.obj X = X.V := by
  simp only [Action.actionPunitEquivalence, Equivalence.symm_functor, Equivalence.trans_functor]
  all_goals try { cases X; all_goals try { simp_all } <;> try { rfl } }