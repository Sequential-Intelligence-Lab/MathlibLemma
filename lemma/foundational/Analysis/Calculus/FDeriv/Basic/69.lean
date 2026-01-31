import Mathlib

theorem HasFDerivAtFilter.comp_tendsto_closedBall_centered'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E E' F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : E' → F} {g : E → E'} {x : E}
    {f' : E' →L[𝕜] F} {g' : E →L[𝕜] E'}
    {L : Filter E} {r : ℝ}
    (hf : HasFDerivAtFilter f f' (g x) (Filter.map g L))
    (hg : HasFDerivAtFilter g g' x L)
    (hbounded : ∀ᶠ y in L, y ∈ Metric.ball x r) :
    HasFDerivAtFilter (fun y => f (g y)) (f'.comp g') x L := by
  -- Use the existing composition lemma for `HasFDerivAtFilter`.
  -- From the error in the previous attempt, we know that `hf.comp x hg`
  -- still expects a `Tendsto g L (Filter.map g L)` argument.
  have hcomp := hf.comp x hg
  -- `tendsto_map` provides the required `Tendsto` condition.
  have hT : Filter.Tendsto g L (Filter.map g L) := Filter.tendsto_map
  -- Apply the composition lemma with the `Tendsto` hypothesis.
  have hfg : HasFDerivAtFilter (f ∘ g) (f'.comp g') x L := hcomp hT
  -- Rephrase `(f ∘ g)` as `fun y => f (g y)`.
  simpa [Function.comp] using hfg