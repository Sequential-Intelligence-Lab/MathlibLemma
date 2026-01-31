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
/-- 77. A manifold is covered by domains of charts from a maximal atlas. -/
lemma IsManifold.iUnion_chart_source_maximalAtlas
    (I : ModelWithCorners 𝕜 E H) (n : WithTop ℕ∞)
    {M : Type*} [TopologicalSpace M] [ChartedSpace H M] [IsManifold I n M] :
    (⋃ e ∈ IsManifold.maximalAtlas I n M, e.source) = (univ : Set M) := by
  sorry
