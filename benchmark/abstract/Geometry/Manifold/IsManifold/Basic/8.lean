import Mathlib


/-
All lemmas below are intentionally left with `sorry` proofs. They are meant
as candidates for future additions to mathlib, inspired by the file on
`ModelWithCorners` and `IsManifold`.
-/

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : Type*} [TopologicalSpace G]

open Set Filter Function Topology
/-- 9. The composition of the model with corners with its inverse is `C^n`. -/
lemma ModelWithCorners.contDiffOn_comp_symm
    (I : ModelWithCorners 𝕜 E H) (n : WithTop ℕ∞) :
    ContDiffOn 𝕜 n (I ∘ I.symm) (range I) := by
  sorry
