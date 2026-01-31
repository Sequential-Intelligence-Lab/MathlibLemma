import Mathlib

theorem Complex.exp_preimage_ball (R : ℝ) :
    Complex.exp ⁻¹' Metric.ball (0 : ℂ) R =
      {z : ℂ | Real.exp z.re < R} := by
  sorry
