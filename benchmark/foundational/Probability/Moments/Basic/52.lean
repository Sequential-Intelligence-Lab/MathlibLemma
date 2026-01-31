import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma mgf_add_const_prob
    {Ω : Type*} {m : MeasurableSpace Ω}
    (μ : MeasureTheory.Measure Ω) [MeasureTheory.IsProbabilityMeasure μ]
    {X : Ω → ℝ} (c t : ℝ) :
    ProbabilityTheory.mgf (fun ω ↦ X ω + c) μ t =
      Real.exp (t * c) * ProbabilityTheory.mgf X μ t := by
  sorry