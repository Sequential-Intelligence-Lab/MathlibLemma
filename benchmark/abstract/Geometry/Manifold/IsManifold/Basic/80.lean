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
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : Type*} [TopologicalSpace G]

open Set Filter Function Topology

/-- 81. `I` is differentiable at all interior points of its range. -/
lemma ModelWithCorners.differentiableAt
    (I : ModelWithCorners 𝕜 E H) :
    ∀ᶠ x in 𝓟 (interior (range I)), DifferentiableAt 𝕜 I.symm x := by
  sorry