import Mathlib

open Filter Topology

theorem HasFDerivWithinAt.congr_of_eventuallyEqOn
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f g : E → F} {f' g' : E →L[𝕜] F}
    {s : Set E} {x : E}
    (hf : HasFDerivWithinAt f f' s x)
    (hg : HasFDerivWithinAt g g' s x)
    (hfg : ∀ᶠ y in 𝓝[s] x, f y = g y) :
    f' = g' := by
  sorry