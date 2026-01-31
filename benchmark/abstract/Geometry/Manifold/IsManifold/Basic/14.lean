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
/-- 15. A product of boundaryless models with corners is boundaryless. -/
lemma ModelWithCorners.boundaryless_prod'
    (I : ModelWithCorners 𝕜 E H) [I.Boundaryless]
    (J : ModelWithCorners 𝕜 E' H') [J.Boundaryless] :
    (I.prod J).Boundaryless := by
  sorry
