import Mathlib

/-- A comparison lemma between Gamma-type integrals with different exponents. -/
lemma Real.integral_rpow_mul_exp_neg_rpow_le
    {p₁ p₂ q : ℝ} (hp₁ : 0 < p₁) (hp₂ : 0 < p₂) (hq : -1 < q) (hle : p₁ ≤ p₂) :
    ∫ x in Set.Ioi (0 : ℝ), x ^ q * Real.exp (-(x ^ p₂)) ≤
      ∫ x in Set.Ioi (0 : ℝ), x ^ q * Real.exp (-(x ^ p₁)) := by
  sorry
