import Mathlib

open Filter Set Topology

/-- 24. Strict derivative of composition with a linear isometry is the composition of operators. -/
lemma HasStrictFDerivAt.comp_isometry
    {𝕜 : Type*} [NontriviallyNormedField 𝕜] [CompleteSpace 𝕜]
    {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E] [FiniteDimensional 𝕜 E]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]
    {f : F → G} {f' : F →L[𝕜] G}
    (L : E ≃ₗᵢ[𝕜] F)
    {x : E}
    (hf : HasStrictFDerivAt f f' (L x)) :
    HasStrictFDerivAt (fun y : E => f (L y)) (f'.comp L.toContinuousLinearMap) x := by
  sorry