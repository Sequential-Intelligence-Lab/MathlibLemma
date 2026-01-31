import Mathlib

open Filter Topology

theorem HasFDerivWithinAt.congr_nhdsWithin
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f g : E → F} {f' : E →L[𝕜] F} {x : E} {s : Set E}
    (h : HasFDerivWithinAt f f' s x)
    (hfg : ∀ᶠ y in 𝓝[s] x, f y = g y) :
    HasFDerivWithinAt g f' s x := by
  sorry