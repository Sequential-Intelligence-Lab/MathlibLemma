import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_cos_add (a b c : ℝ) :
    ∫ x in a..b, Real.cos (x + c) = Real.sin (b + c) - Real.sin (a + c) := by
  -- Use the substitution u = x + c to simplify the integral.
  have h1 : ∀ x : ℝ, Real.cos (x + c) = Real.cos (x + c) := fun x => rfl
  simp_all [integral_cos]
  -- The integral of cos(x + c) from a to b is sin(b + c) - sin(a + c).
  <;> simp [h1]
  <;> ring
  <;> apply integral_congr
  <;> simp [h1]
  <;> ring