import Mathlib

/-- Positivity of the discriminant for real quadratic fields. -/
lemma discr_pos_of_real_quadratic
    (K : Type*) [Field K] [NumberField K] [NumberField.IsTotallyReal K]
    (hdeg : Module.finrank ℚ K = 2) :
    0 < NumberField.discr K := by
  sorry