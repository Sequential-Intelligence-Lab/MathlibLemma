import Mathlib

theorem DifferentiableOn.comp_closedBall_subset'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E E' F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : E' → F} {g : E → E'}
    {r : ℝ}
    (hf : DifferentiableOn 𝕜 f (Metric.closedBall (g 0) r))
    (hg : DifferentiableOn 𝕜 g (Metric.closedBall 0 r))
    (himg : g '' Metric.closedBall 0 r ⊆ Metric.closedBall (g 0) r) :
    DifferentiableOn 𝕜 (fun y => f (g y)) (Metric.closedBall 0 r) := by
  sorry
