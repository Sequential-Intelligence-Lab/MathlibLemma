import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma mgf_comp_measurable_equiv
    {Ω Ω' : Type*} {m : MeasurableSpace Ω} {m' : MeasurableSpace Ω'}
    (e : MeasurableEquiv Ω Ω') {μ : MeasureTheory.Measure Ω}
    (X : Ω' → ℝ) (t : ℝ) :
    ProbabilityTheory.mgf (X ∘ e) μ t =
      ProbabilityTheory.mgf X (MeasureTheory.Measure.map e μ) t := by
  sorry