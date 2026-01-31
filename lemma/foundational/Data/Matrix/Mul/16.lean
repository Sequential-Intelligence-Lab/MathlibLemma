import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma dotProduct_pair [NonUnitalNonAssocSemiring α]
    (v w : Fin 2 → α) :
    v ⬝ᵥ w = v ⟨0, by decide⟩ * w ⟨0, by decide⟩
      + v ⟨1, by decide⟩ * w ⟨1, by decide⟩ := by
  -- Simplify the dot product using the definition for Fin 2 vectors
  simp [Fin.sum_univ_succ, Fin.sum_univ_zero, mul_zero, zero_mul]
  -- The sum over Fin 2 is the sum of the products of corresponding components
  -- This step directly computes the dot product as v(0)*w(0) + v(1)*w(1)
  <;> rfl