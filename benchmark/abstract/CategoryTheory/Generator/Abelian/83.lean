import Mathlib

universe u v w

open CategoryTheory
open CategoryTheory.Limits

/-- In an abelian category, projective objects are closed under coproducts
indexed by a finite type. -/
lemma projective_small_sigma
  {C : Type u} [Category.{v} C] [Abelian C]
  {ι : Type w} [Fintype ι] (X : ι → C) (hX : ∀ i, Projective (X i))
  [HasCoproductsOfShape ι C] :
  Projective (∐ X) := by
  sorry