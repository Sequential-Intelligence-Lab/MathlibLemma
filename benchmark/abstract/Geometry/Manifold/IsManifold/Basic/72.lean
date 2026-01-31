import Mathlib

/-
All lemmas below are intentionally left with `sorry` proofs. They are meant
as candidates for future additions to mathlib, inspired by the file on
`ModelWithCorners` and `IsManifold`.
-/

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : Type*} [TopologicalSpace G]

open Set Filter Function Topology

/-- 73. For a smooth manifold, every chart is a `C^n` diffeomorphism. -/
lemma IsManifold.contMDiffOn_chart
    (I : ModelWithCorners 𝕜 E H) (n : WithTop ℕ∞)
    {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
    [IsManifold I n M] (x : M) :
    ContMDiffOn I I n (chartAt H x) (chartAt H x).source := by
  sorry