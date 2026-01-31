import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_rpow_base (a x : ℝ) (ha : 0 < a) (ha1 : a ≠ 1) :
    Real.logb a (a ^ x) = x := by
  -- We aim to prove that for any positive real number `a` (`a ≠ 1`) and any real number `x`, the following holds:
  -- \[
  -- \log_a(a^x) = x
  -- \]
  rw [Real.logb, div_eq_iff (log_ne_zero_of_pos_of_ne_one ha ha1), mul_comm]
  -- Recall the definition of a logarithm. The logarithm base `a` of a number `b`, denoted `log_a(b)`, is the exponent to which `a` must be raised to obtain `b`.
  -- In mathematical terms: \[ \log_a(b) = c \quad \text{if and only if} \quad a^c = b \]
  -- Apply the definition to `log_a(a^x)`. Let `c = log_a(a^x)`. By the definition of the logarithm: \[ a^c = a^x \]
  -- Since the bases are the same and `a ≠ 1`, the exponents must be equal. Therefore, if `a^c = a^x`, it must follow that `c = x`.
  -- Substitute back to find `log_a(a^x)`. From step 2 and step 3, we have: \[ c = x \quad \Rightarrow \quad log_a(a^x) = x \]
  <;> simp [log_rpow ha, mul_comm]
  -- This completes the proof.
  <;> linarith