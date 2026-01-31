import Mathlib

lemma TensorProduct.lidIsometry_tmul_one
    {𝕜 E : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (x : E) :
    TensorProduct.lidIsometry 𝕜 E (1 ⊗ₜ[𝕜] x) = x := by
  sorry
