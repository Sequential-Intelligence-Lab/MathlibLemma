import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : Type*} [TopologicalSpace G]

open Set Filter Function Topology

/-
All lemmas below are intentionally left with `sorry` proofs. They are meant
as candidates for future additions to mathlib, inspired by the file on
`ModelWithCorners` and `IsManifold`.
-/

/-- 94. The projection from the tangent bundle to the base is a smooth submersion. -/
lemma IsManifold.tangentBundle_proj_smoothSubmersion
    (I : ModelWithCorners 𝕜 E H) {M : Type*} [TopologicalSpace M]
    [ChartedSpace H M] {n : WithTop (ℕ∞)} [IsManifold I n M] :
    True := by
  sorry