import Mathlib

open Filter Topology

variable {𝕜 E F : Type*}

theorem HasStrictFDerivAt.hasFDerivWithinAt_of_subset
    [NontriviallyNormedField 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : E → F} {f' : E →L[𝕜] F}
    {x : E} {s : Set E}
    (hf : HasStrictFDerivAt f f' x)
    (hs : s ∈ (𝓝 x)) :
    HasFDerivWithinAt f f' s x := by
  -- We don't actually need `hs`; strict differentiability implies
  -- differentiability at `x`, and hence within any set `s`.
  simpa using (hf.hasFDerivAt.hasFDerivWithinAt (s := s))