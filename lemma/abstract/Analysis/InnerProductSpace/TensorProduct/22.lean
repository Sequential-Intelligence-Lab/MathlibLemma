import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma TensorProduct.eq_zero_of_inner_tmul_self_eq_zero_left
    {𝕜 E F : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    {x : E} {y : F} (h : inner 𝕜 (x ⊗ₜ[𝕜] y) (x ⊗ₜ[𝕜] y) = 0) :
    x = 0 ∨ y = 0 := by
  -- Start by assuming the given inner product is zero.
  have h₁ : inner 𝕜 (x ⊗ₜ[𝕜] y) (x ⊗ₜ[𝕜] y) = 0 := h
  -- Simplify the inner product using the definition of the tensor product inner product.
  simp [inner_tmul, inner_self_eq_zero] at h₁
  -- Use the fact that the product of two non-zero numbers is non-zero to conclude that either x or y must be zero.
  simp_all [mul_eq_zero]