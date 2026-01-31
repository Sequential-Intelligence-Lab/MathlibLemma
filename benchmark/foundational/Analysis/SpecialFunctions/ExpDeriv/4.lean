import Mathlib

theorem Complex.analyticOn_exp_preimage_real {s : Set ℝ} :
    AnalyticOn ℂ Complex.exp ((fun z : ℂ => (Complex.exp z).re) ⁻¹' s) := by
  sorry