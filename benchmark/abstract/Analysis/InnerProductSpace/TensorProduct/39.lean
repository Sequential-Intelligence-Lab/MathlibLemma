import Mathlib

open TensorProduct

lemma TensorProduct.commIsometry_involutive
    {𝕜 E F : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F] :
    (TensorProduct.commIsometry (𝕜 := 𝕜) (E := E) (F := F)).trans
      (TensorProduct.commIsometry (𝕜 := 𝕜) (E := F) (F := E))
      = (LinearIsometryEquiv.refl 𝕜 (E ⊗[𝕜] F)) := by
  sorry