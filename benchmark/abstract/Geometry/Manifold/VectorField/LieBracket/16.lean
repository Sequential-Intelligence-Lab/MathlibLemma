import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]
variable {X : Type*} [TopologicalSpace X]
variable {Y : Type*} [TopologicalSpace Y]
variable {Z : Type*} [TopologicalSpace Z]

variable {ι : Type*}

/-! ## Basic filter / topology lemmas -/
lemma mfderivWithin_comp_chart_eq_mfderiv
    {E H : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [TopologicalSpace H]
    {I : ModelWithCorners 𝕜 E H}
    (J : ModelWithCorners 𝕜 E E)
    {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
    (x : M) :
    mfderivWithin I J (extChartAt I x) (extChartAt I x).source x =
      mfderiv I J (extChartAt I x) x := by
  sorry

/-! ## Manifold and chart lemmas -/

variable {M : Type*} [TopologicalSpace M]
variable {N : Type*} [TopologicalSpace N]
variable {H₁ : Type*} [TopologicalSpace H₁]
variable {E₁ : Type*} [NormedAddCommGroup E₁] [NormedSpace 𝕜 E₁]
variable {I : ModelWithCorners 𝕜 E₁ H₁}
variable [ChartedSpace H₁ M]