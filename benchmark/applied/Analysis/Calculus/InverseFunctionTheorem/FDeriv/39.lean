import Mathlib

open scoped NNReal
open Filter Set Topology

universe u v w z

variable {𝕜 : Type u} [NontriviallyNormedField 𝕜]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type w} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type z} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

/-- 40. `ApproximatesLinearOn` is monotone with respect to the constant. -/
lemma ApproximatesLinearOn.mono_const
    {f : E → F} {f' : E →L[𝕜] F}
    {s : Set E} {c₁ c₂ : ℝ≥0}
    (h : ApproximatesLinearOn f f' s c₁) (hc : c₁ ≤ c₂) :
    ApproximatesLinearOn f f' s c₂ := by
  sorry