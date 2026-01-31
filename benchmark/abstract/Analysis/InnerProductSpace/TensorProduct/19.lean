import Mathlib

namespace TensorProduct

lemma norm_mapInclIsometry_eq
    {𝕜 E F : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    (E' : Submodule 𝕜 E) (F' : Submodule 𝕜 F)
    (x : E' ⊗[𝕜] F') :
    ‖TensorProduct.mapInclIsometry E' F' x‖ = ‖x‖ := by
  sorry

end TensorProduct