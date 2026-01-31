import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma dotProduct_one_right [Fintype n] [MulOneClass α] [AddCommMonoid α]
    (v : n → α) :
    v ⬝ᵥ (fun _ => (1 : α)) = ∑ i, v i := by
  -- Use the symmetry of equality to show that the left-hand side equals the right-hand side.
  apply Eq.symm
  -- Simplify the dot product using the definition of the dot product and the properties of the vector of ones.
  simp [dotProduct, Finset.sum_const, mul_one, Finset.sum_mul, Finset.sum_add_distrib]
  -- Use the ring properties to simplify the expression to the sum of the components of `v`.
  <;> ring