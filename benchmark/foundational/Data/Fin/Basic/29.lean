import Mathlib

lemma Fin.castSucc_lt_iff {n : ℕ} {i j : Fin n} :
    (Fin.castSucc i : Fin (n + 1)) < Fin.castSucc j ↔ i < j := by
  sorry
