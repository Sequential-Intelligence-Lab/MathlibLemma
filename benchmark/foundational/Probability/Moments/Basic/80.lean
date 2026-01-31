import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma chernoff_lower_tail_prob
    {Ω : Type*} [m : MeasurableSpace Ω] (μ : MeasureTheory.Measure Ω)
    [MeasureTheory.IsFiniteMeasure μ]
    {X : Ω → ℝ} (ε t : ℝ) (ht : t ≤ 0)
    (h_int : MeasureTheory.Integrable (fun ω ↦ Real.exp (t * X ω)) μ) :
    (MeasureTheory.Measure.real μ) {ω | X ω ≤ ε} ≤
      Real.exp (-t * ε + ProbabilityTheory.cgf X μ t) := by
  sorry