import Mathlib

lemma Fin.succ_le_iff {n : ℕ} {i j : Fin n} :
    i.succ ≤ j.succ ↔ i ≤ j := by
  simpa using (Fin.succ_le_succ_iff (i := i) (j := j))