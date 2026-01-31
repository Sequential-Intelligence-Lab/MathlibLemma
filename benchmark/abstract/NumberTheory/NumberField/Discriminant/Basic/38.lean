import Mathlib

/-- If a number field has discriminant `±2`, then its degree is bounded. -/
lemma finrank_le_of_abs_discr_eq_two
    (K : Type*) [Field K] [NumberField K]
    (h : |NumberField.discr K| = 2) :
    Module.finrank ℚ K ≤ 3 := by
  sorry