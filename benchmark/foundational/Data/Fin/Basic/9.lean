import Mathlib

lemma Fin.lt_last_of_succ_le {n : ℕ} {i : Fin (n + 1)}
    (h : i.succ ≤ Fin.last (n + 1)) :
    i < Fin.last n := by
  sorry