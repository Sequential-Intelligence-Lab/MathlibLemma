import Mathlib

/-- Expression of `Gamma (1/2)` by the Gaussian integral. -/
lemma Real.Gamma_one_half_eq_gaussian :
    Real.Gamma (1 / 2 : ℝ) =
      ∫ x : ℝ, Real.exp (-x ^ 2) := by
  sorry
