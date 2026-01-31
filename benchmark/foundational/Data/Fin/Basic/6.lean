import Mathlib

lemma Fin.eq_of_lt_succ {n : ℕ} {i j : Fin (n + 1)} (h : i < j + 1) (h' : j ≤ i) : i = j := by
  sorry