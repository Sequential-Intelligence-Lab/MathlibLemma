import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- 83. If a local inverse exists and is strictly differentiable,
then the product of derivatives is identity. -/
lemma HasStrictFDerivAt.localInverse_chain_rule
    [CompleteSpace E]
    {f : E → F} {f' : E ≃L[𝕜] F}
    {x : E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x) :
    ∃ g : F → E,
      HasStrictFDerivAt g (f'.symm : F →L[𝕜] E) (f x) ∧
      HasStrictFDerivAt (fun y => f (g y)) (ContinuousLinearMap.id 𝕜 F) (f x) := by
  sorry