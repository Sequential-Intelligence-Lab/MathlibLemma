import Mathlib

open scoped Manifold
open Topology

variable
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]
  {G : Type*} [NormedAddCommGroup G] [NormedSpace ℝ G]
  {H : Type*} [TopologicalSpace H]
  {M : Type*} [TopologicalSpace M]
  {I : ModelWithCorners ℝ E H}
  {J : ModelWithCorners ℝ F H}
  {x y z : M}

/-! ### Distance and basic properties near a chart -/
lemma eventually_edist_le_of_comp_chart
    [ChartedSpace H M] [PseudoEMetricSpace M]
    (x : M) :
    ∀ᶠ y in 𝓝 x,
      ∀ z ∈ (chartAt H x).source,
        edist x z ≤
          edist x y + edist y z := by
  sorry