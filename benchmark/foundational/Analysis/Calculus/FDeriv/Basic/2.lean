import Mathlib

open Topology

theorem HasFDerivAt.congr_nhds
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E] [TopologicalSpace E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F] [TopologicalSpace F]
    {f g : E → F} {f' : E →L[𝕜] F} {x : E}
    (h : HasFDerivAt f f' x)
    (hfg : ∀ᶠ y in 𝓝 x, f y = g y) :
    HasFDerivAt g f' x := by
  sorry