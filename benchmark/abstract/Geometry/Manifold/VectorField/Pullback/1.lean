import Mathlib

open scoped Manifold

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {H : Type*} [TopologicalSpace H]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable (I : ModelWithCorners 𝕜 E H)
variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M]

/-! ### Basic properties of `IsManifold` and `minSmoothness` -/

/-- If `M` is a manifold of smoothness `minSmoothness 𝕜 (n.succ)`,
then it is a manifold of smoothness `minSmoothness 𝕜 n`.
We do not prove this lemma here. -/
lemma IsManifold.of_le_minSmoothness_succ
    {n : ℕ} [IsManifold I (minSmoothness 𝕜 n.succ) M] :
    IsManifold I (minSmoothness 𝕜 n) M := by
  sorry