import Mathlib

theorem Complex.exp_eq_tsum (z : ℂ) :
    Complex.exp z = ∑' n : ℕ, z ^ n / Nat.factorial n := by
  sorry
