import Mathlib

lemma Fin.eq_zero_of_val_eq_zero {n : ℕ} (i : Fin n) (h : i.val = 0) :
    i = ⟨0, by
      -- proof that 0 < n
      simpa [h] using i.2⟩ := by
  -- use extensionality on `val`
  apply Fin.ext
  -- it suffices to show the `val` components are equal
  simpa [h]