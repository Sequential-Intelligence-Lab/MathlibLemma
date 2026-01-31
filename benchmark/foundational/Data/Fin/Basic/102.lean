import Mathlib

lemma Fin.cast_val {n m : ℕ} (h : n = m) (i : Fin n) :
    (Fin.cast h i).val = i.val := by
  sorry
