import Mathlib

lemma Fin.castSucc_le_iff {n : ℕ} {i j : Fin n} :
    (Fin.castSucc i : Fin (n + 1)) ≤ Fin.castSucc j ↔ i ≤ j := by
  simpa using
    (Fin.castSucc.orderEmbedding (n := n)).le_iff_le (i := i) (j := j)