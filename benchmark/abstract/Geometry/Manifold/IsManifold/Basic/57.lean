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
/-- 58. `IsManifold` plus compactness implies finite atlas. -/
lemma IsManifold.finite_subatlas_of_compact
    (I : ModelWithCorners 𝕜 E H) (n : WithTop ℕ∞)
    {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
    [IsManifold I n M] [CompactSpace M] :
    ∃ A : Finset (OpenPartialHomeomorph M H),
      (↑A : Set (OpenPartialHomeomorph M H)) ⊆ atlas H M ∧
      (⋃ e ∈ A, e.source) = (univ : Set M) := by
  sorry
