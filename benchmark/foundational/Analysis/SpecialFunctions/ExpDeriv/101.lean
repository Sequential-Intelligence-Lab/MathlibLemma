import Mathlib

theorem Real.exp_eq_tsum (x : ℝ) :
    Real.exp x = ∑' n : ℕ, x ^ n / Nat.factorial n := by
  sorry
