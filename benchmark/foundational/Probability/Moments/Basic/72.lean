import Mathlib

open MeasureTheory ProbabilityTheory

/-! ### Brainstormed lemmas about `moment` -/
lemma cgf_zero_prob_meas
    {Ω : Type*} [m : MeasurableSpace Ω]
    (μ : Measure Ω) [MeasureTheory.IsProbabilityMeasure μ]
    {X : Ω → ℝ} :
    ProbabilityTheory.cgf X μ 0 = 0 := by
  sorry