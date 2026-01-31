import Mathlib

lemma Real.rpow_mul_pow {x : ℝ} (hx : 0 ≤ x) (y : ℝ) (n : ℕ) :
    (x ^ (y * n)) = (x ^ y) ^ n := by
  classical
  -- Split into the cases x > 0 and x = 0
  rcases lt_or_eq_of_le hx with hxpos | rfl
  · -- Case 1: x > 0
    -- Now we can use Real.rpow_add
    induction' n with n ih
    · -- base case n = 0
      simp
    · -- inductive step
      -- Rewrite y * (n.succ) as y * n + y
      have h1 :
          x ^ (y * (Nat.succ n : ℝ))
            = x ^ (y * (n : ℝ) + y) := by
        simp [Nat.succ_eq_add_one, mul_add, add_comm, add_left_comm, add_assoc]
      calc
        x ^ (y * (Nat.succ n : ℝ))
            = x ^ (y * (n : ℝ) + y) := h1
        _   = x ^ (y * (n : ℝ)) * x ^ y := by
              -- use additivity of rpow
              simpa using (Real.rpow_add hxpos (y * (n : ℝ)) y)
        _   = (x ^ y) ^ n * x ^ y := by
              -- apply inductive hypothesis
              simpa [ih]
        _   = (x ^ y) ^ Nat.succ n := by
              -- natural power step
              simp [Nat.succ_eq_add_one, pow_succ, mul_comm, mul_left_comm, mul_assoc]
  · -- Case 2: x = 0
    -- Goal: 0 ^ (y * n) = (0 ^ y) ^ n
    cases n with
    | zero =>
        -- n = 0
        simp
    | succ n =>
        -- n = n.succ
        by_cases hy : y = 0
        · -- Subcase y = 0
          subst hy
          simp
        · -- Subcase y ≠ 0
          -- Show the exponent y * (n.succ) is nonzero
          have hn : (Nat.succ n : ℝ) ≠ 0 := by
            exact_mod_cast (Nat.succ_ne_zero n)
          have hy' : y * (Nat.succ n : ℝ) ≠ 0 :=
            mul_ne_zero hy hn
          -- Use zero_rpow on both exponents
          have hL : (0 : ℝ) ^ (y * Nat.succ n : ℝ) = 0 :=
            Real.zero_rpow hy'
          have hbase : (0 : ℝ) ^ y = 0 :=
            Real.zero_rpow hy
          calc
            (0 : ℝ) ^ (y * Nat.succ n : ℝ)
                = 0 := hL
            _   = (0 : ℝ) ^ Nat.succ n := by simp
            _   = ((0 : ℝ) ^ y) ^ Nat.succ n := by
                  simpa [hbase]