import Mathlib

open Filter Topology

theorem HasFDerivAt.of_local_eqOn
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {x : E} {f g : E → F} {f' : E →L[𝕜] F}
    (hf : HasFDerivAt f f' x)
    (h : ∀ᶠ y in 𝓝 x, f y = g y) :
    HasFDerivAt g f' x := by
  sorry