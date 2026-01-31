import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 58. Local inverse extends continuously to the closure of a small ball. -/
lemma HasStrictFDerivAt.localInverse_continuousOn_closedBall
    [CompleteSpace E]
    {f : E → F} {f' : E ≃L[𝕜] F} {x : E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x) :
    ∃ r > (0 : ℝ),
      ContinuousOn (hf.localInverse f f' x) (Metric.closedBall (f x) r) := by
  sorry
