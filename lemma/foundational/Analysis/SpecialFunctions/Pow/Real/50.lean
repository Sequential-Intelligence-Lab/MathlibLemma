import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_le_one_iff_of_between (x : ℝ) (hx0 : 0 < x) (hx1 : x < 1) :
    x ^ y ≤ 1 ↔ 0 ≤ y := by
  have h_x_pow_le_one : x ^ y ≤ 1 := by
    have h₁ : x ≤ 1 := by linarith
    have h₂ : 0 ≤ x := by linarith
    -- Use induction on y to prove that x ^ y ≤ 1 for all natural numbers y
    have h₃ : ∀ (n : ℕ), x ^ n ≤ 1 := by
      intro n
      induction n with
      | zero =>
        -- Base case: when n = 0, x ^ 0 = 1 ≤ 1
        norm_num
      | succ n ih =>
        -- Inductive step: assume x ^ n ≤ 1, prove x ^ (n + 1) ≤ 1
        calc
          x ^ (n + 1) = x * x ^ n := by
            -- Use the property of exponents: x ^ (n + 1) = x * x ^ n
            ring_nf
          _ ≤ 1 * x ^ n := by
            -- Since x ≤ 1 and x ^ n ≥ 0, multiplying both sides by x ^ n gives x * x ^ n ≤ 1 * x ^ n
            gcongr <;> nlinarith [pow_nonneg h₂ n]
          _ = x ^ n := by
            -- Simplify 1 * x ^ n to x ^ n
            ring
          _ ≤ 1 := by
            -- By the induction hypothesis, x ^ n ≤ 1
            exact ih
    -- Apply the general result to the specific y
    exact h₃ y
  
  have h_zero_le_y : 0 ≤ y := by
    exact Nat.zero_le y
  
  have h_forward : x ^ y ≤ 1 → 0 ≤ y := by
    intro h
    -- Since y is a natural number, 0 ≤ y is always true.
    exact Nat.zero_le y
  
  have h_backward : 0 ≤ y → x ^ y ≤ 1 := by
    intro h
    -- We already have that x ^ y ≤ 1 from h_x_pow_le_one
    exact h_x_pow_le_one
  
  constructor
  · -- Prove the forward direction: x ^ y ≤ 1 → 0 ≤ y
    exact h_forward
  · -- Prove the backward direction: 0 ≤ y → x ^ y ≤ 1
    exact h_backward