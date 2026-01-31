import Mathlib

lemma Fin.orderIso_cast_val {m n : ℕ} (h : m = n) (i : Fin m) :
    (Fin.castOrderIso h i).val = i.val := by
  sorry