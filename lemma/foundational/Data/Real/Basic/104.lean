import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.mul_add_one_le_pow_two {a : ℝ} (ha : 0 ≤ a) :
    (a * 2 + 1 : ℝ) ≤ (a + 1) ^ 2 := by
  -- Expand the right-hand side using the binomial theorem.
  rw [sq]
  -- Simplify the expression by expanding and rearranging terms.
  ring_nf
  -- Use non-linear arithmetic to prove the inequality.
  -- Since a ≥ 0, we know that a^2 ≥ 0, which helps in proving the inequality.
  nlinarith [sq_nonneg a, ha, sq_nonneg (a + 1), sq_nonneg (a - 1)]