import Mathlib

open Filter

theorem HasStrictFDerivAt.hasFDerivAtFilter_nhdsWithin'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : E → F} {f' : E →L[𝕜] F}
    {x : E} {s : Set E}
    (hf : HasStrictFDerivAt f f' x) :
    HasFDerivAtFilter f f' x (nhdsWithin x s) := by
  sorry