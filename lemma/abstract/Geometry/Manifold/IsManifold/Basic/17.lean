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

/-- 18. A `Boundaryless` model with corners has trivial corner structure. -/
lemma ModelWithCorners.boundaryless_uniqueDiffOn_univ
    (I : ModelWithCorners 𝕜 E H) [I.Boundaryless] :
    UniqueDiffOn 𝕜 (univ : Set E) := by
  -- This is a special case of the general fact that the whole space of a
  -- normed vector space is a `UniqueDiffOn` set.
  simpa using (uniqueDiffOn_univ (𝕜 := 𝕜) (E := E))