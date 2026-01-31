import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma TensorProduct.eq_zero_of_norm_tmul_eq_zero_left
    {𝕜 E F : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    {x : E} {y : F} (h : ‖x ⊗ₜ[𝕜] y‖ = 0) :
    x = 0 ∨ y = 0 := by
  -- Use the property that the norm of a tensor product is zero if and only if one of the vectors is zero.
  by_cases hx : x = 0
  -- If x is zero, return the left disjunction.
  exact Or.inl hx
  -- If x is not zero, use the property that the norm of the tensor product is zero if and only if y is zero.
  by_cases hy : y = 0
  -- If y is zero, return the right disjunction.
  exact Or.inr hy
  -- If neither x nor y is zero, use the fact that the norm of the tensor product is non-zero.
  simp_all [norm_tmul, hx, hy, mul_eq_zero]