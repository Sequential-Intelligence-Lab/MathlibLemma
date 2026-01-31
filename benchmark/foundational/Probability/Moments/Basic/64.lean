import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma cgf_eq_log_mgf
    {Ω : Type*} {m : MeasurableSpace Ω}
    {μ : MeasureTheory.Measure Ω} {X : Ω → ℝ} {t : ℝ} :
    ProbabilityTheory.cgf X μ t =
      Real.log (ProbabilityTheory.mgf X μ t) := by
  sorry