import Mathlib

open CategoryTheory
open CategoryTheory.Limits

/-- In a category with coproducts, projective objects are closed under coproducts. -/
lemma projective_sigma
  {C : Type*} [Category C] [HasCoproducts C]
  {ι : Type*} (X : ι → C) (hX : ∀ i, Projective (X i)) :
  Projective (∐ X) := by
  sorry