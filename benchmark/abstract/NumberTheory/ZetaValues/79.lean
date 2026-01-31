import Mathlib

lemma bernoulliFun_zero_iff_const (f : ℝ → ℝ) :
    (∃ k, f = bernoulliFun k) → (∀ x, deriv f x = 0) → ∀ x, f x = f 0 := by
  sorry
