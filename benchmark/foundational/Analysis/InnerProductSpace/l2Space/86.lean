import Mathlib

theorem HilbertBasis.hasSum_image
    {ι κ 𝕜 : Type*} [RCLike 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F] [CompleteSpace F]
    (b : HilbertBasis ι 𝕜 E) (T : E →L[𝕜] F) (x : E) :
    HasSum (fun i => b.repr x i • T (b i)) (T x) := by
  sorry
