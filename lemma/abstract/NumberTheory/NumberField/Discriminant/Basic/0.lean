import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma discr_rat : (NumberField.discr ℚ) = (1 : ℤ) := by
  -- Use the definition of the discriminant for the rational numbers
  rw [NumberField.discr]
  -- Simplify the expression using the fact that the discriminant of the rational numbers is 1
  simp [NumberField.discr]
  -- Confirm the result by reflexivity
  <;> rfl