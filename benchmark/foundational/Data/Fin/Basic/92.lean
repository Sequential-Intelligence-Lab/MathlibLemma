import Mathlib

lemma Fin.mul_val_eq_val_mul {n : ℕ} (i j : Fin n) :
    (i * j).val = (i.val * j.val) % n := by
  sorry
