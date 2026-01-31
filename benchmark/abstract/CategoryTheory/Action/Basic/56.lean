import Mathlib

universe u

open CategoryTheory

-- PUnit action equivalence lemmas

lemma Action.actionPunitEquivalence_functor_obj
    {V : Type u} [Category V]
    (X : Action V PUnit) :
    (Action.actionPunitEquivalence (V := V)).functor.obj X = X.V := by
  sorry