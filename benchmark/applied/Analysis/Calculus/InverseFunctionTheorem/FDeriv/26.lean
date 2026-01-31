import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- 27. Local inverse preserves balls around the base point (up to shrinking). -/
lemma HasStrictFDerivAt.localInverse_maps_ball
    [CompleteSpace E]
    {f : E → F} {f' : E ≃L[𝕜] F} {x : E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x) :
    ∃ (r : ℝ), r > 0 ∧
    ∃ (s : ℝ), s > 0 ∧
      f '' Metric.ball x r ⊆ Metric.ball (f x) s ∧
      hf.localInverse f f' x '' Metric.ball (f x) s ⊆ Metric.ball x r := by
  sorry