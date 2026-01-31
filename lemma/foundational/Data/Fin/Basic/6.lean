import Mathlib

lemma Fin.eq_of_lt_succ {n : ℕ} {i j : Fin (n + 1)} (h : i < j + 1) (h' : j ≤ i) : i = j := by
  -- Move inequalities to ℕ via coercions
  have hij_nat : (i : ℕ) < ((j + 1 : Fin (n + 1)) : ℕ) := by
    simpa using h
  have h'nat : (j : ℕ) ≤ (i : ℕ) := by
    simpa using h'

  -- Case split on whether j is the last element
  by_cases hlast : j = Fin.last n
  · -- Wrap-around case: j = last n
    subst hlast
    -- For the last element, adding 1 wraps to 0
    have hwrap : ((Fin.last n : Fin (n + 1)) + 1) = 0 := by
      simp
    -- This implies an impossible inequality in ℕ
    have : (i : ℕ) < 0 := by
      simpa [hwrap] using hij_nat
    exact (Nat.not_lt_zero _ this).elim
  · -- Non-wrap case: j ≠ last n, so val (j+1) = val j + 1
    have hij_succ_nat : (i : ℕ) < (j : ℕ) + 1 := by
      simpa [Fin.val_add_one, hlast] using hij_nat
    -- From j ≤ i and i < j+1 in ℕ, we get equality of values
    have h_eq_val : (i : ℕ) = (j : ℕ) := by
      apply le_antisymm
      · exact Nat.le_of_lt_succ hij_succ_nat
      · exact h'nat
    -- Conclude equality of Fin elements from equality of their values
    ext
    exact h_eq_val