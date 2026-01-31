import Mathlib

lemma TensorProduct.eq_zero_of_norm_tmul_eq_zero_left
    {𝕜 E F : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    {x : E} {y : F} (h : ‖x ⊗ₜ[𝕜] y‖ = 0) :
    x = 0 ∨ y = 0 := by
  sorry
