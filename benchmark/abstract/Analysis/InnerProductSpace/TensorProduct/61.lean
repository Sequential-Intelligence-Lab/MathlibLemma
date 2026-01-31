import Mathlib

open scoped TensorProduct

lemma TensorProduct.nnnorm_tmul_le_mul
    {𝕜 E F : Type*}
    [NormedField 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NNNorm (E ⊗[𝕜] F)]
    (x : E) (y : F) :
    ‖x ⊗ₜ[𝕜] y‖₊ ≤ ‖x‖₊ * ‖y‖₊ := by
  sorry