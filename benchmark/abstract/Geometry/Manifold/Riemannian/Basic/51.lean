import Mathlib

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
lemma uniformity_eq_uniformity_ofRiemannianMetric
    [ChartedSpace H M] [RegularSpace M] :
    (⊤ : UniformSpace M) = (⊤ : UniformSpace M) := by
  sorry

/-! ### Miscellaneous auxiliary lemmas -/