import Mathlib

theorem HasFDerivAtFilter.comp_tendsto_closedBall'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E E' F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : E' → F} {g : E → E'} {x : E}
    {f' : E' →L[𝕜] F} {g' : E →L[𝕜] E'}
    {L : Filter E}
    (hf : HasFDerivAtFilter f f' (g x) (Filter.map g L))
    (hg : HasFDerivAtFilter g g' x L)
    (hbounded : ∀ᶠ y in L, y ∈ Metric.closedBall x 1) :
    HasFDerivAtFilter (fun y => f (g y)) (f'.comp g') x L := by
  -- Use the chain rule `comp`, which yields a function requiring a `Tendsto` hypothesis.
  have hcomp := hf.comp x hg
  -- `hcomp` has type: `Filter.Tendsto g L (Filter.map g L) →
  --   HasFDerivAtFilter (f ∘ g) (f'.comp g') x L`.
  -- The needed `Tendsto` is always true.
  have hT : Filter.Tendsto g L (Filter.map g L) := Filter.tendsto_map
  -- Apply the `Tendsto` to obtain the composed derivative statement.
  have hfg : HasFDerivAtFilter (f ∘ g) (f'.comp g') x L := hcomp hT
  -- Rewrite `f ∘ g` to `fun y => f (g y)`.
  simpa [Function.comp] using hfg