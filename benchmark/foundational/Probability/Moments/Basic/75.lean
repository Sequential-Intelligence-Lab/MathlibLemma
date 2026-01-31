import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma IndepFun.cgf_add'
    {Ω : Type*} [m : MeasurableSpace Ω]
    (μ : MeasureTheory.Measure Ω)
    (X Y : Ω → ℝ) (t : ℝ)
    (h_indep : ProbabilityTheory.IndepFun X Y μ)
    (h_int_X : MeasureTheory.Integrable (fun ω ↦ Real.exp (t * X ω)) μ)
    (h_int_Y : MeasureTheory.Integrable (fun ω ↦ Real.exp (t * Y ω)) μ) :
    ProbabilityTheory.cgf (X + Y) μ t =
      ProbabilityTheory.cgf X μ t + ProbabilityTheory.cgf Y μ t := by
  sorry