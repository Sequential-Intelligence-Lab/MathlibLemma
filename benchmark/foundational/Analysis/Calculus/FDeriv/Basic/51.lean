import Mathlib

theorem differentiableOn_closedBall_iff_locally
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (f : E → F) {x : E} {r : ℝ} (hr : 0 < r) :
    DifferentiableOn 𝕜 f (Metric.closedBall x r) ↔
      ∀ y ∈ Metric.closedBall x r, DifferentiableAt 𝕜 f y := by
  sorry
