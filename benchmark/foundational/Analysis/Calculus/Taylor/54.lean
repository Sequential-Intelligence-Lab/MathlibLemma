import Mathlib

open Set

theorem taylor_mean_remainder_lagrange_abs
    {f : ℝ → ℝ} {x x₀ : ℝ} {n : ℕ} (hx : x₀ < x)
    (hf : ContDiffOn ℝ (n + 1) f (Icc x₀ x)) :
    ∃ x' ∈ Ioo x₀ x,
      |f x - taylorWithinEval f n (Icc x₀ x) x₀ x|
        = |iteratedDeriv (n + 1) f x'| * |x - x₀| ^ (n + 1) / (Nat.factorial (n + 1)) := by
  sorry