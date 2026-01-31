import Mathlib

open scoped Manifold

/-! ## Basic filter / topology lemmas -/

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]

/-- A placeholder lemma about smoothness from pointwise smoothness.
    Statement only; proof omitted. -/
lemma contMDiff_of_contMDiffAt
    {H : Type*} [TopologicalSpace H] [NormedAddCommGroup H] [NormedSpace 𝕜 H]
    {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
    {N : Type*} [TopologicalSpace N] [ChartedSpace H N]
    (I : ModelWithCorners 𝕜 H H)
    {n : WithTop ℕ∞} {f : M → N}
    (h : ∀ x, ContMDiffAt I I n f x) :
    ContMDiff I I n f := by
  sorry