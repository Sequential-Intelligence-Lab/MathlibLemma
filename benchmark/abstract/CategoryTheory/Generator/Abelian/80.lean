import Mathlib

open CategoryTheory
open CategoryTheory.Limits

namespace CategoryTheory

/-- In a preadditive category, the sum of two separators is a separator. -/
lemma isSeparator_binary_biprod
  {C : Type*} [Category C] [Preadditive C] [HasBinaryBiproducts C]
  {G H : C} (hG : IsSeparator G) (hH : IsSeparator H) :
  IsSeparator (Limits.biprod G H) := by
  sorry

end CategoryTheory