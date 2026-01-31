import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 1. A strict derivative into a finite-dimensional space implies Fréchet differentiability. -/
lemma HasStrictFDerivAt.hasFDerivAt_of_finiteDimensional
    [FiniteDimensional 𝕜 F]
    {f : E → F} {f' : E →L[𝕜] F} {x : E}
    (hf : HasStrictFDerivAt f f' x) :
    HasFDerivAt f f' x := by
  sorry
