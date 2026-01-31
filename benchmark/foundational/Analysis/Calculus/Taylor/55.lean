import Mathlib

open Real

theorem taylor_mean_remainder_bound_abs
    {f : ℝ → ℝ} {a b C x : ℝ} {n : ℕ} (hab : a ≤ b)
    (hf : ContDiffOn ℝ (n + 1) f (Set.Icc a b)) (hx : x ∈ Set.Icc a b)
    (hC :
      ∀ y ∈ Set.Icc a b,
        |iteratedDerivWithin (n + 1) f (Set.Icc a b) y| ≤ C) :
    |f x - taylorWithinEval f n (Set.Icc a b) a x|
      ≤ C * |x - a| ^ (n + 1) / (Nat.factorial n) := by
  sorry