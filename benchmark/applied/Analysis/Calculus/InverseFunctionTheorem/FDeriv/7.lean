import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 8. Strict derivative is unique as a continuous linear map. -/
lemma HasStrictFDerivAt.unique_fderiv
    {f : E → F} {f₁' f₂' : E →L[𝕜] F} {x : E}
    (h₁ : HasStrictFDerivAt f f₁' x)
    (h₂ : HasStrictFDerivAt f f₂' x) :
    f₁' = f₂' := by
  sorry
