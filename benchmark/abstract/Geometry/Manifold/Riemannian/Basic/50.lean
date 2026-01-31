import Mathlib

open Topology Filter

variable
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]
  {G : Type*} [NormedAddCommGroup G] [NormedSpace ℝ G]
  {H : Type*} [TopologicalSpace H]
  {M : Type*} [TopologicalSpace M]
  {I : ModelWithCorners ℝ E H}
  {J : ModelWithCorners ℝ F H}
  {x y z : M}

/-! ### Riemannian distance and basic properties -/
lemma nhds_eq_nhds_ofRiemannianMetric
    [ChartedSpace H M] [RegularSpace M]
    (x : M) :
    𝓝 x = 𝓝 x := by
  -- nontrivial equality from construction; here left as sorry
  sorry