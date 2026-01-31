import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma dotProduct_one_left [Fintype n] [MulOneClass α] [AddCommMonoid α]
    (v : n → α) :
    (fun _ => (1 : α)) ⬝ᵥ v = ∑ i, v i := by
  -- Use the definition of the dot product to expand the expression.
  rw [dotProduct, Finset.sum_congr rfl]
  -- Simplify each term in the sum by multiplying by 1.
  intro i _
  simp [mul_one]