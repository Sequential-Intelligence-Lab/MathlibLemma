import Mathlib

/-- Any imaginary quadratic field has discriminant at most `-3`. -/
lemma discr_le_neg_three_of_imaginary_quadratic
    (K : Type*) [Field K] [NumberField K] [NumberField.IsTotallyComplex K]
    (hdeg : Module.finrank ℚ K = 2) :
    NumberField.discr K ≤ -3 := by
  sorry