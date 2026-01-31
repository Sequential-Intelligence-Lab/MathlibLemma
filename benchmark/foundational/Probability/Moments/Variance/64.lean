import Mathlib

open MeasureTheory ProbabilityTheory

lemma variance_real_add_real
    {Ω : Type*} [mΩ : MeasurableSpace Ω]
    (μ : Measure Ω) [IsFiniteMeasure μ]
    {X Y : Ω → ℝ}
    (hX : MeasureTheory.MemLp X 2 μ)
    (hY : MeasureTheory.MemLp Y 2 μ) :
    ProbabilityTheory.variance (X + Y) μ =
      ProbabilityTheory.variance X μ
        + 2 * ProbabilityTheory.covariance X Y μ
        + ProbabilityTheory.variance Y μ := by
  sorry