import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma dotProduct_eq_of_sub_eq_zero [Fintype m] [NonUnitalNonAssocRing α]
    (v w : m → α) (h : v - w = 0) :
    v ⬝ᵥ v = v ⬝ᵥ w := by
  -- Given that v - w = 0, we can infer that v = w.
  have h' : v = w := by
    -- Using the fact that the difference is zero, we can conclude that the vectors are equal.
    apply eq_of_sub_eq_zero
    exact h
  -- Substitute w with v in the dot product v ⬝ w.
  rw [h']
  -- Simplify the expression to show that v ⬝ v = v ⬝ w.
  <;> simp [h]