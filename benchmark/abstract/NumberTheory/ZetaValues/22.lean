import Mathlib

lemma bernoulliFourierCoeff_decay (k : ℕ) :
    ∃ C, ∀ n : ℤ, n ≠ 0 → ‖bernoulliFourierCoeff k n‖ ≤ C / (‖(n:ℂ)‖^k) := by
  sorry
