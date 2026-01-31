import Mathlib

lemma TensorProduct.inner_tmul_left
    {𝕜 E F : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    (x x' : E) (y : F) :
    inner 𝕜 (x ⊗ₜ[𝕜] y) (x' ⊗ₜ[𝕜] y) = inner 𝕜 x x' * ‖y‖^2 := by
  -- Use the standard formula for the inner product of pure tensors,
  -- and then rewrite ⟪y, y⟫ as ‖y‖^2.
  simpa [inner, inner_self_eq_norm_sq_to_K] using
    (TensorProduct.inner_tmul_tmul (x := x) (x' := x') (y := y) (y' := y))