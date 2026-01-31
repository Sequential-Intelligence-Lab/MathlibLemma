import Mathlib

theorem differentiableOn_Union_closed_ball
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (f : E → F) :
    (∀ R : ℝ, 0 < R → DifferentiableOn 𝕜 f (Metric.closedBall (0 : E) R)) →
    Differentiable 𝕜 f := by
  sorry
