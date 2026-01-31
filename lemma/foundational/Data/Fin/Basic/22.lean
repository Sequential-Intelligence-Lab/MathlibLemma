import Mathlib

lemma Fin.succ_strictMono {n : ℕ} {i j : Fin n} (hij : i < j) : i.succ < j.succ := by
  -- unfold the structure of `i` and `j` into their underlying `Nat` values
  cases' i with iv hi
  cases' j with jv hj
  -- turn `hij` into a statement on the underlying natural numbers
  simp [Fin.lt_iff_val_lt_val] at hij
  -- now prove the desired inequality using the natural-number inequality
  simp [Fin.lt_iff_val_lt_val, Fin.succ, Nat.succ_lt_succ_iff, hij]