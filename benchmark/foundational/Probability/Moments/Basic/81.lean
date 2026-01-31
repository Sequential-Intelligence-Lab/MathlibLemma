import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open MeasureTheory ProbabilityTheory Real

lemma chernoff_upper_tail_mgf
    {Ω : Type*} [MeasurableSpace Ω] (μ : Measure Ω)
    [MeasureTheory.IsProbabilityMeasure μ]
    {X : Ω → ℝ} (ε t : ℝ) (ht : 0 ≤ t)
    (h_int : Integrable (fun ω ↦ Real.exp (t * X ω)) μ) :
    μ {ω | ε ≤ X ω} ≤
      ENNReal.ofReal (Real.exp (-t * ε) * ProbabilityTheory.mgf X μ t) := by
  sorry