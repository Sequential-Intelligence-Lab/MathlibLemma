import Mathlib

lemma Fin.succ_lt_last_iff {n : ℕ} {i : Fin n} :
    (i.succ : Fin (n + 1)) < Fin.last n ↔
      (i.castSucc : Fin (n + 1)) < Fin.last n := by
  sorry