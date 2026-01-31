import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 50. If `f` has strict derivative that is injective at `x`, then `f` is locally injective at `x`. -/
lemma HasStrictFDerivAt.locally_injective_of_fderiv_injective
    {f : E → F} {f' : E →L[𝕜] F} {x : E}
    (hf : HasStrictFDerivAt f f' x)
    (hinj : Function.Injective f') :
    ∃ s ∈ 𝓝 x, ∀ ⦃y z⦄, y ∈ s → z ∈ s → f y = f z → y = z := by
  sorry
