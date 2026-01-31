import Mathlib

lemma Fin.succ_eq_last_iff {n : ℕ} {i : Fin n} : (i.succ : Fin (n + 1)) = Fin.last n ↔ i.val = n - 1 := by
  sorry
