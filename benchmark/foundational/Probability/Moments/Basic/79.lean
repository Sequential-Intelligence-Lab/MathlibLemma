import Mathlib

open scoped BigOperators
open MeasureTheory

/-! ### Brainstormed lemmas about `moment` -/
lemma chernoff_upper_tail_prob
    {Ω : Type*} {m : MeasurableSpace Ω} (μ : Measure Ω)
    [IsFiniteMeasure μ]
    {X : Ω → ℝ} (ε t : ℝ) (ht : 0 ≤ t)
    (h_int : Integrable (fun ω ↦ Real.exp (t * X ω)) μ) :
    (μ.real) {ω | ε ≤ X ω} ≤
      Real.exp (-t * ε + ProbabilityTheory.cgf X μ t) := by
  sorry