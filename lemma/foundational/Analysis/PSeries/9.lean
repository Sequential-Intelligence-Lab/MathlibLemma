import Mathlib

lemma StrictMono.succDiff_ne_zero {u : ℕ → ℕ} (hu : StrictMono u) :
    ∀ n, u (n + 1) - u n ≠ 0 := by
  intro n
  -- Suppose for contradiction that the difference is zero
  intro h
  -- From h, we get an inequality in the wrong direction
  have hle : u (n + 1) ≤ u n := Nat.sub_eq_zero_iff_le.mp h
  -- From strict monotonicity, we have u n < u (n+1)
  have hlt : u n < u (n + 1) := hu (Nat.lt_succ_self n)
  -- Contradiction: cannot have u (n+1) ≤ u n and u n < u (n+1)
  exact (not_le_of_gt hlt) hle