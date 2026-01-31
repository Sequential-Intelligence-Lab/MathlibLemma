import Mathlib

/-- Asymptotic equivalence of `Gamma(x+1)` and `x^x * e^{-x} * sqrt(2πx)` at `+∞`. -/
lemma Real.isEquivalent_Gamma_add_one_stirling :
    Asymptotics.IsEquivalent Filter.atTop
      (fun x : ℝ => Real.Gamma (x + 1))
      (fun x : ℝ => Real.sqrt (2 * Real.pi * x) * x ^ x * Real.exp (-x)) := by
  sorry