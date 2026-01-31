import Mathlib

open CategoryTheory

/-- An equivalence preserves separators. -/
lemma IsSeparator.of_isIso_map
  {C D : Type*} [Category C] [Category D]
  (F : C ⥤ D) [F.IsEquivalence]
  {G : C} (hG : IsSeparator G) :
  IsSeparator (F.obj G) := by
  sorry