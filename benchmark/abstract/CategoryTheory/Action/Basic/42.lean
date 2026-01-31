import Mathlib

open CategoryTheory

lemma Action.functorCategoryEquivalence_faithful
    {V : Type*} [Category V]
    {G : Type*} [Monoid G] :
    (Action.functorCategoryEquivalence (G := G) (V := V)).functor.Faithful := by
  sorry