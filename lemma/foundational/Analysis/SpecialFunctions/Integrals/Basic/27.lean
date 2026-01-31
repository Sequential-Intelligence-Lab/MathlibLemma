import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_sin_add (a b c : ℝ) :
    ∫ x in a..b, Real.sin (x + c) = Real.cos (a + c) - Real.cos (b + c) := by
  -- Use the substitution u = x + c
  have h1 : ∀ x : ℝ, Real.sin (x + c) = Real.sin (x + c) := by simp
  simp_all [integral_sin]
  -- Simplify the expression using the properties of cosine
  <;> simp [Real.cos_add, Real.cos_sub, Real.sin_add, Real.sin_sub]
  -- Normalize the expression to achieve the final form
  <;> ring_nf
  -- Verify the numerical correctness
  <;> norm_num
  -- Use linear arithmetic to confirm the result
  <;> linarith