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
  -- Get the standard `HasFDerivAt` at `x` from differentiability.
  have h₁ : HasFDerivAt f (fderiv 𝕜 f x) x := hf.hasFDerivAt
  -- View it as a `HasFDerivAtFilter` with filter `𝓝 x`.
  have h₂ : HasFDerivAtFilter f (fderiv 𝕜 f x) x (𝓝 x) := by
    simpa [HasFDerivAt] using h₁
  -- Restrict the filter from `𝓝 x` to `𝓝[s] x` using monotonicity.
  exact h₂.mono nhdsWithin_le_nhds