import Mathlib

lemma LinearIsometry.extend_restrict
    {𝕜 : Type*} [RCLike 𝕜]
    {V : Type*} [NormedAddCommGroup V] [InnerProductSpace 𝕜 V]
    [FiniteDimensional 𝕜 V] {S : Submodule 𝕜 V}
    (L : S →ₗᵢ[𝕜] V) (x : S) :
    L.extend x = L x := by
  sorry