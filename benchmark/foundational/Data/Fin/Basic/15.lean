import Mathlib

lemma Fin.eq_zero_or_eq_last {n : ℕ} (i : Fin (n + 1)) (h₀ : i ≤ 0) (h₁ : Fin.last n ≤ i) :
    i = 0 ∨ i = Fin.last n := by
  sorry
