import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]

-- Model space
variable {H₁ : Type*} [NormedAddCommGroup H₁] [NormedSpace 𝕜 H₁]

-- Manifold
variable {M : Type*} [TopologicalSpace M]

-- Model with corners from H₁ to itself (standard situation)
variable (I : ModelWithCorners 𝕜 H₁ H₁)

-- Charted space structure on M modeled on H₁
variable [ChartedSpace H₁ M]

/-! ## Basic filter / topology lemmas -/
lemma uniqueMDiffOn_preimage_chart
    (x : M) (s : Set H₁) (hs : UniqueDiffOn 𝕜 s) :
    UniqueMDiffOn I ((extChartAt I x).source ∩ ((extChartAt I x) ⁻¹' s)) := by
  sorry