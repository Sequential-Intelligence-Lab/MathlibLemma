import Mathlib

theorem HasStrictFDerivAt.hölderOnWith_of_le_one
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {x : E} {f : E → F} {f' : E →L[𝕜] F}
    (hf : HasStrictFDerivAt f f' x)
    {α : ℝ} (hα : 0 < α ∧ α ≤ 1) :
    ∃ r > 0, ∃ C, ∀ ⦃y z : E⦄,
      y ∈ Metric.ball x r → z ∈ Metric.ball x r →
      ‖f y - f z‖ ≤ C * ‖y - z‖ ^ (α : ℝ) := by
  sorry