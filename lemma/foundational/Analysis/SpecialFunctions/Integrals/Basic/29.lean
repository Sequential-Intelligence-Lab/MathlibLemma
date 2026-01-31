import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_sin_shift_pi (a b : ℝ) :
    ∫ x in a..b, Real.sin (x + Real.pi) = - ∫ x in a..b, Real.sin x := by
  -- Use the trigonometric identity sin(x + π) = -sin(x)
  have h : ∀ x : ℝ, Real.sin (x + Real.pi) = -Real.sin x := by
    intro x
    rw [Real.sin_add]
    simp [Real.sin_pi, Real.cos_pi]
  -- Substitute the identity into the integral
  simp [h]
  -- Factor out the constant multiple (-1) from the integral
  <;> simp [integral_mul_left]
  -- Simplify the expression to complete the proof
  <;> ring