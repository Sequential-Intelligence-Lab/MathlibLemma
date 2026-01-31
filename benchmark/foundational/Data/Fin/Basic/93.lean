import Mathlib

lemma Fin.pow_val_eq_val_pow {n : ℕ} (i : Fin n) (k : ℕ) :
    (i.val ^ k) % n = i.val ^ k % n := by
  sorry