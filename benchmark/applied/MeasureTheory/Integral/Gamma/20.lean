import Mathlib

/-- A Beta-Gamma relation in integral form on `(0,∞) × (0,∞)`. -/
lemma Real.integral_rpow_rpow_exp_neg_add
    {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    ∫ x in Set.Ioi (0 : ℝ), ∫ y in Set.Ioi (0 : ℝ),
        x ^ (a - 1) * y ^ (b - 1) * Real.exp (-(x + y)) =
      Real.Gamma a * Real.Gamma b := by
  sorry
