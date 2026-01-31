import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma dotProduct_sub_right [Fintype m] [NonUnitalNonAssocRing α]
    (u v w : m → α) :
    u ⬝ᵥ (v - w) = u ⬝ᵥ v - u ⬝ᵥ w := by
  -- Use the definition of the dot product and the distributive property of multiplication over subtraction.
  simp [dotProduct, mul_sub, sub_mul, Finset.sum_sub_distrib]
  -- Simplify the expression using the properties of the dot product and the ring operations.
  <;> simp_all [Finset.sum_sub_distrib, mul_sub, sub_mul]
  -- Combine the terms to show the desired equality.
  <;> ring