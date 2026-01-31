import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- 95. Local inverse is the unique continuous map right inverse to `f` near `f x`. -/
lemma HasStrictFDerivAt.localInverse_unique_continuous
    [CompleteSpace E]
    {f : E → F} {f' : E ≃L[𝕜] F}
    {x : E} {g : F → E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x)
    (hg : ContinuousAt g (f x))
    (hleft : ∀ᶠ y in 𝓝 (f x), f (g y) = y) :
    ∀ᶠ y in 𝓝 (f x), g y = hf.localInverse f f' x y := by
  sorry