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
/-- 59. A manifold modelled on a finite-dimensional space is locally compact. -/
lemma IsManifold.locallyCompactSpace
    (I : ModelWithCorners 𝕜 E H)
    [LocallyCompactSpace E]
    (n : WithTop ℕ∞)
    {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
    [IsManifold I n M] :
    LocallyCompactSpace M := by
  sorry
