import Mathlib

open Complex

theorem Complex.analyticOn_exp_preimage_imag (s : Set ℝ) :
    AnalyticOn ℂ Complex.exp ((fun z : ℂ => (Complex.exp z).im) ⁻¹' s) := by
  sorry