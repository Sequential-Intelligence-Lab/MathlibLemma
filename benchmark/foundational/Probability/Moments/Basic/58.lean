import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma mgf_dirac_point
    {Ω : Type*} [MeasurableSpace Ω] [MeasurableSingletonClass Ω]
    {ω : Ω} {X : Ω → ℝ} {t : ℝ} :
    ProbabilityTheory.mgf X (MeasureTheory.Measure.dirac ω) t =
      Real.exp (t * X ω) := by
  sorry