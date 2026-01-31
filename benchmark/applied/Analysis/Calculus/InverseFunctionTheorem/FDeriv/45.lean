import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- 46. Strict differentiation characterizes local Lipschitz behavior with linear part. -/
lemma HasStrictFDerivAt.local_lipschitz_with_linear
    {f : E → F} {f' : E →L[𝕜] F} {x : E}
    (hf : HasStrictFDerivAt f f' x) :
    ∃ r > (0 : ℝ), ∃ K ≥ (0 : ℝ),
      ∀ ⦃y z⦄, y ∈ Metric.ball x r → z ∈ Metric.ball x r →
        dist (f y - f z - f' (y - z)) 0 ≤ K * dist y z := by
  sorry