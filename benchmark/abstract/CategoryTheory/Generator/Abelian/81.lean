import Mathlib

open CategoryTheory
open CategoryTheory.Limits

/-- In a preadditive category, the sum of two coseparators is a coseparator. -/
lemma isCoseparator_binary_biprod
  {C : Type*} [Category C] [Preadditive C] [HasBinaryBiproducts C]
  {G H : C} (hG : IsCoseparator G) (hH : IsCoseparator H) :
  IsCoseparator (G ⊞ H) := by
  sorry