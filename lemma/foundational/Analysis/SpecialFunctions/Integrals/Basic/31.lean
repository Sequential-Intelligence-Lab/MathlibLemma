import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_cos_sq_add_sin_sq (a b : ℝ) :
    ∫ x in a..b, (Real.cos x ^ 2 + Real.sin x ^ 2) = b - a := by
  -- Use the Pythagorean identity to simplify the integrand.
  have h : ∀ x : ℝ, Real.cos x ^ 2 + Real.sin x ^ 2 = 1 := fun x => by
    rw [Real.cos_sq_add_sin_sq]
  -- Substitute the identity into the integral and simplify.
  simp [h]
  -- The integral of 1 over [a, b] is simply b - a.
  <;> simp [integral_one]
  <;> simp [sub_eq_add_neg]
  <;> linarith