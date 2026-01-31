import Mathlib

lemma TensorProduct.norm_tmul_ne_zero_iff
    {𝕜 E F : Type*}
    [NormedField 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup (TensorProduct 𝕜 E F)] [NormedSpace 𝕜 (TensorProduct 𝕜 E F)]
    (x : E) (y : F) :
    ‖x ⊗ₜ[𝕜] y‖ ≠ 0 ↔ x ≠ 0 ∧ y ≠ 0 := by
  sorry