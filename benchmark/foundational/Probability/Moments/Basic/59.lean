import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma mgf_add_measure_nonneg
    {Ω : Type*} {m : MeasurableSpace Ω}
    (μ ν : MeasureTheory.Measure Ω) (X : Ω → ℝ) (t : ℝ)
    (hμ : MeasureTheory.Integrable (fun ω ↦ Real.exp (t * X ω)) μ)
    (hν : MeasureTheory.Integrable (fun ω ↦ Real.exp (t * X ω)) ν) :
    ProbabilityTheory.mgf X (μ + ν) t =
      ProbabilityTheory.mgf X μ t + ProbabilityTheory.mgf X ν t := by
  sorry