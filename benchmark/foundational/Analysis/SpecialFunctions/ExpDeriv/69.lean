import Mathlib

open Complex Metric Bornology

theorem Complex.exp_boundedOn_closedBall (R : ℝ) :
    Bornology.IsBounded (Complex.exp '' closedBall (0 : ℂ) R) := by
  sorry