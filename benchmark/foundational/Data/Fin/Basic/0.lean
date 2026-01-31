import Mathlib

lemma Fin.eq_zero_of_val_eq_zero {n : ℕ} (i : Fin n) (h : i.val = 0) :
    i = ⟨0, by
      -- placeholder proof of 0 < n (or 0 < n.succ, etc.) if needed
      sorry⟩ := by
  sorry