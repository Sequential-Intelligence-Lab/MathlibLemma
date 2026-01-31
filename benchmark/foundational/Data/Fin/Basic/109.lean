import Mathlib

lemma Fin.eq_last_of_not_lt_last {n : ℕ} {i : Fin (n + 1)} (h : ¬ i < Fin.last n) :
    i = Fin.last n := by
  sorry
