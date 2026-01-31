import Mathlib

lemma Fin.castLT_val {n : ℕ} {i : Fin n} {h : i.val < n} :
    (Fin.castLT i h).val = i.val := by
  sorry
