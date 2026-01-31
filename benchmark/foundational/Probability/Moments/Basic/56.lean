import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma mgf_eq_one_of_zero
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : MeasureTheory.Measure Ω) [MeasureTheory.IsProbabilityMeasure μ]
    {X : Ω → ℝ} :
    ProbabilityTheory.mgf X μ 0 = 1 := by
  sorry