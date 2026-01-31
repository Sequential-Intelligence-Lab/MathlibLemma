import Mathlib

namespace CategoryTheory

/-- In a preadditive category, a coseparator is a codetector. -/
lemma IsCoseparator.isCodetector'
  {C : Type*} [Category C] [Preadditive C]
  {G : C} (hG : IsCoseparator G) :
  IsCodetector G := by
  sorry

end CategoryTheory