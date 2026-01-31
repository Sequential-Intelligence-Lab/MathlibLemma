import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma TensorProduct.inner_tmul_real_eq_dot_mul
    {E F : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
    [NormedAddCommGroup F] [InnerProductSpace ℝ F]
    (x x' : E) (y y' : F) :
    inner ℝ (x ⊗ₜ[ℝ] y) (x' ⊗ₜ[ℝ] y') =
      (inner ℝ x x') * (inner ℝ y y') := by
  -- Simplify the inner product using the definition of the inner product on the tensor product space.
  simp [inner_tmul, mul_assoc, mul_comm, mul_left_comm]
  -- Use the properties of the inner product and the tensor product to verify the equality.
  <;> aesop