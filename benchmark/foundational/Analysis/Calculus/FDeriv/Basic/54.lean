import Mathlib

open Topology

theorem DifferentiableAt.hasFDerivAtFilter_nhdsWithin_of_subset_closure
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {s : Set E} {x : E} {f : E → F}
    (hf : DifferentiableAt 𝕜 f x)
    (hxs : x ∈ closure s) :
    HasFDerivAtFilter f (fderiv 𝕜 f x) x (𝓝[ s] x : Filter E) := by
  sorry