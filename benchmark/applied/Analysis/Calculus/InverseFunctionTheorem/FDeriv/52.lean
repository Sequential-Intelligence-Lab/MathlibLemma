import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 53. Local inverse is differentiable (without specifying the derivative). -/
lemma HasStrictFDerivAt.localInverse_differentiableAt
    [CompleteSpace E]
    {f : E → F} {f' : E ≃L[𝕜] F} {x : E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x) :
    DifferentiableAt 𝕜 (hf.localInverse f f' x) (f x) := by
  sorry
