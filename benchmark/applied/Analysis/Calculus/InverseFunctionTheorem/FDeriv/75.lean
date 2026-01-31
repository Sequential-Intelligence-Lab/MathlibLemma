import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 76. If a period map has strictly invertible derivative, then periods are locally isolated. -/
lemma HasStrictFDerivAt.periodic_points_discrete
    [CompleteSpace E]
    {f : E → E} {f' : E ≃L[𝕜] E} {x : E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] E) x)
    (hfix : f x = x) :
    ∃ s ∈ 𝓝 x, ∀ y ∈ s, f y = y → y = x := by
  sorry
