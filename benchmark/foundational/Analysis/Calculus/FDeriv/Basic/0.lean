import Mathlib

open Filter

theorem HasFDerivAtFilter.congr_nhds
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f g : E → F} {f' : E →L[𝕜] F} {x : E} {L : Filter E}
    (hL : L ≤ nhds x)
    (h : HasFDerivAtFilter f f' x L)
    (hfg : ∀ᶠ y in L, f y = g y) :
    HasFDerivAtFilter g f' x L := by
  sorry