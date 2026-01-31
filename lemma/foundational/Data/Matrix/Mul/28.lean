import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma dotProduct_sub_left [Fintype m] [NonUnitalNonAssocRing α]
    (u v w : m → α) :
    (u - v) ⬝ᵥ w = u ⬝ᵥ w - v ⬝ᵥ w := by
  -- Use the distributive property of the dot product over subtraction.
  simp [Finset.sum_sub_distrib]
  -- Apply the distributive property to each term in the sum.
  <;> simp [Finset.sum_sub_distrib]
  -- Combine the results using the ring properties.
  <;> ring