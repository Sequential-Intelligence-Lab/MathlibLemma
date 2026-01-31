import Mathlib

theorem HilbertBasis.hasSum_image
    {ι κ 𝕜 : Type*} [RCLike 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F] [CompleteSpace F]
    (b : HilbertBasis ι 𝕜 E) (T : E →L[𝕜] F) (x : E) :
    HasSum (fun i => b.repr x i • T (b i)) (T x) := by
  -- Start from the standard expansion of `x` in terms of the Hilbert basis
  -- and map the resulting series through the continuous linear map `T`.
  -- Then use linearity of `T` with respect to scalar multiplication.
  simpa using T.hasSum (b.hasSum_repr x)