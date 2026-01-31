import Mathlib

lemma LinearIsometry.extend_isometry
    {𝕜 V : Type*}
    [RCLike 𝕜]
    [NormedAddCommGroup V]
    [InnerProductSpace 𝕜 V]
    [FiniteDimensional 𝕜 V]
    {S : Submodule 𝕜 V}
    (L : S →ₗᵢ[𝕜] V) :
    Isometry L.extend := by
  sorry