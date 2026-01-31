import Mathlib

lemma TensorProduct.inner_tmul_right
    {𝕜 E F : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    (x : E) (y y' : F) :
    inner 𝕜 (x ⊗ₜ[𝕜] y) (x ⊗ₜ[𝕜] y') = ‖x‖^2 * inner 𝕜 y y' := by
  -- Use the multiplicativity of the inner product on pure tensors
  -- and then rewrite ⟪x, x⟫ as ‖x‖^2.
  simpa [inner_self_eq_norm_sq_to_K] using
    (inner_tmul_tmul (x₁ := x) (y₁ := y) (x₂ := x) (y₂ := y'))