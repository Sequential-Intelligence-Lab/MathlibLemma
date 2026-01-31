import Mathlib

theorem Complex.exp_preimage_closedBall (R : ℝ) :
    Complex.exp ⁻¹' Metric.closedBall (0 : ℂ) R =
      {z : ℂ | Real.exp z.re ≤ R} := by
  sorry
