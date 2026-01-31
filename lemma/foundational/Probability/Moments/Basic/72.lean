import Mathlib

open MeasureTheory ProbabilityTheory

/-! ### Brainstormed lemmas about `moment` -/
lemma cgf_zero_prob_meas
    {Ω : Type*} [m : MeasurableSpace Ω]
    (μ : Measure Ω) [MeasureTheory.IsProbabilityMeasure μ]
    {X : Ω → ℝ} :
    ProbabilityTheory.cgf X μ 0 = 0 := by
  -- This is a direct consequence of the general lemma about `cgf` at zero
  simpa using ProbabilityTheory.cgf_zero (μ := μ) (X := X)