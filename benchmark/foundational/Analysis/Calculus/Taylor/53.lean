import Mathlib

open scoped Interval
open Set

theorem Real.taylor_mean_remainder_symm
    {f : ℝ → ℝ} {x x₀ : ℝ} {n : ℕ} (hx : x < x₀)
    (hf : ContDiffOn ℝ n f (Icc x x₀))
    (hf' :
      DifferentiableOn ℝ
        (iteratedDerivWithin n f (Icc x x₀))
        (Ioo x x₀)) :
    ∃ x' ∈ Ioo x x₀,
      f x₀ - taylorWithinEval f n (Icc x x₀) x x₀ =
        iteratedDerivWithin (n + 1) f (Icc x x₀) x'
          * (x₀ - x) ^ (n + 1) / (Nat.factorial (n + 1)) := by
  sorry