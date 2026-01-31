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
  sorry