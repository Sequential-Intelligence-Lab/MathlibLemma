import Mathlib

open Set Metric

theorem HasFDerivWithinAt.of_eqOn_closedBall
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {x : E} {r : ℝ} {f g : E → F} {f' : E →L[𝕜] F} :
    HasFDerivWithinAt f f' (Metric.closedBall x r) x →
      Set.EqOn f g (Metric.closedBall x r) →
      HasFDerivWithinAt g f' (Metric.closedBall x r) x := by
  sorry