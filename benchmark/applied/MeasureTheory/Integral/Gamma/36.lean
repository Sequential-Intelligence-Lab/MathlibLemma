import Mathlib

/-- An inequality comparing Gamma-values from an inequality of integrals. -/
lemma Real.Gamma_le_of_integral_le
    {a b : ℝ} (ha : 0 < a) (hb : 0 < b)
    (hint : ∀ t > 0, t ^ (a - 1) * Real.exp (-t) ≤ t ^ (b - 1) * Real.exp (-t)) :
    Real.Gamma a ≤ Real.Gamma b := by
  sorry
