import Mathlib

lemma Fin.eq_zero_or_pos {n : ℕ} [NeZero n] (i : Fin n) : i = 0 ∨ 0 < i := by
  by_cases h : i.1 = 0
  · -- Case 1: the value is zero, so i = 0
    left
    have hval : i.1 = (0 : Fin n).1 := by simpa [h]
    exact Fin.ext hval
  · -- Case 2: the value is nonzero, so i is positive
    right
    have hpos : 0 < i.1 := Nat.pos_of_ne_zero h
    -- Rewrite the goal to a statement about the underlying Nat value
    change 0 < i.1
    exact hpos