import Mathlib

open CategoryTheory
open CategoryTheory.Limits

/-- In an abelian category, injective objects are closed under products. -/
lemma injective_pi
    {C : Type*} [Category C] [Abelian C] [HasProducts C]
    {ι : Type*} (X : ι → C) (hX : ∀ i, Injective (X i)) :
    Injective (∏ᶜ X) := by
  sorry