import Mathlib

/-- An equality between two parametric Gamma-type integrals on `(0,∞)`. -/
lemma Real.integral_rpow_mul_exp_neg_rpow_eq
    {p₁ p₂ q₁ q₂ : ℝ} (hp₁ : 0 < p₁) (hp₂ : 0 < p₂)
    (hq₁ : -1 < q₁) (hq₂ : -1 < q₂)
    (hGamma : (1 / p₁) * Real.Gamma ((q₁ + 1) / p₁)
              = (1 / p₂) * Real.Gamma ((q₂ + 1) / p₂)) :
    ∫ x in Set.Ioi (0 : ℝ), x ^ q₁ * Real.exp (-(x ^ p₁)) =
      ∫ x in Set.Ioi (0 : ℝ), x ^ q₂ * Real.exp (-(x ^ p₂)) := by
  sorry
