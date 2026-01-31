import Mathlib

open CategoryTheory

variable (V : Type*) [Category V]
variable (G : Type*) [Monoid G]

/-- A placeholder lemma stating that the inverse functor of
`Action.FunctorCategoryEquivalence` is full. -/
lemma Action.functorCategoryEquivalence_inverse_full :
    (Action.functorCategoryEquivalence (V := V) (G := G)).inverse.Full := by
  sorry