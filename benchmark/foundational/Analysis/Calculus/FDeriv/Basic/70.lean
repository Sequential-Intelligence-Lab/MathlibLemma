import Mathlib

theorem differentiableOn_congr_on_ball'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (f g : E → F) (x : E) (r : ℝ)
    (hf : DifferentiableOn 𝕜 f (Metric.ball x r))
    (hfg : Set.EqOn f g (Metric.ball x r)) :
    DifferentiableOn 𝕜 g (Metric.ball x r) := by
  sorry