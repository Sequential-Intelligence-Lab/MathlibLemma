import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_id_cube (a b : ℝ) :
    ∫ x in a..b, x^3 = (b^4 - a^4) / 4 := by
  -- Use the Fundamental Theorem of Calculus to evaluate the integral.
  -- The antiderivative of x^3 is x^4 / 4.
  simp [integral_id]
  -- Simplify the expression using algebraic rules.
  ring
  -- Use the fact that the integral of x^3 from a to b is the difference of the antiderivative evaluated at b and a.
  <;> simp [integral_id]
  <;> ring
  <;> simp [integral_id]
  <;> ring