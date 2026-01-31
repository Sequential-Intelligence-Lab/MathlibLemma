import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {H : Type*} [TopologicalSpace H]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {I : ModelWithCorners 𝕜 E H}
variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M]

lemma VectorField.mpullback_comp_id_right
    (V : ∀ x : M, TangentSpace I x) :
    VectorField.mpullback I I (fun x : M => x) V = V := by
  sorry