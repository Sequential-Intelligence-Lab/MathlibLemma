import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 85. `localInverse` fixes `f x` and its derivative at this point is `f'.symm`. -/
lemma HasStrictFDerivAt.localInverse_fix
    [CompleteSpace E]
    {f : E → F} {f' : E ≃L[𝕜] F}
    {x : E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x) :
    hf.localInverse f f' x (f x) = x
    ∧ HasStrictFDerivAt (hf.localInverse f f' x) (f'.symm : F →L[𝕜] E) (f x) := by
  sorry
