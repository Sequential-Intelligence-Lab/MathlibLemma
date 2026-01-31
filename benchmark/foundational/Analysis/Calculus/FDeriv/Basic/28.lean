import Mathlib

open Filter Topology

theorem HasFDerivAt.equivalent_fderivAtFilter_nhdsWithin
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E] [TopologicalSpace E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : E → F} {x : E} {f' : E →L[𝕜] F} {s : Set E}
    (hs : s ∈ 𝓝 x)
    (h : HasFDerivAt f f' x) :
    HasFDerivAtFilter f f' x (𝓝[s] x) := by
  sorry