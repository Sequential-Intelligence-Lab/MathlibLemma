import Mathlib

open CategoryTheory

lemma Action.functorCategoryEquivalence_full
    {V : Type*} [Category V] [MonoidalCategory V]
    {G : Type*} [Monoid G] :
    (Action.FunctorCategoryEquivalence.functor (V := V) (G := G)).Full := by
  sorry