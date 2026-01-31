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
lemma mfderiv_norm_le_opNorm
    [ChartedSpace H M] [PseudoEMetricSpace M]
    (f : M → E) (x : M) :
    ‖mfderiv I (modelWithCornersSelf ℝ E) f x‖ ≤
      ‖mfderiv I (modelWithCornersSelf ℝ E) f x‖ := by
  -- This is just reflexivity of ≤ on ℝ.
  simpa using
    (le_rfl :
      ‖mfderiv I (modelWithCornersSelf ℝ E) f x‖ ≤
      ‖mfderiv I (modelWithCornersSelf ℝ E) f x‖)