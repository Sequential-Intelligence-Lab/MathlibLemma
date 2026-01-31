import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma cgf_const_prob
    {Ω : Type*} {m : MeasurableSpace Ω}
    (μ : MeasureTheory.Measure Ω)
    [MeasureTheory.IsProbabilityMeasure μ]
    (c t : ℝ) :
    ProbabilityTheory.cgf (fun _ : Ω ↦ c) μ t = t * c := by
  sorry