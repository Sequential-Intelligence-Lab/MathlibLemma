import Mathlib

open ProbabilityTheory
open MeasureTheory

/-! ### Brainstormed lemmas about `moment` -/
lemma centralMoment_zero_prob
    {Ω : Type*} {m : MeasurableSpace Ω}
    {p : ℕ} {μ : Measure Ω} [MeasureTheory.IsProbabilityMeasure μ] :
    centralMoment (fun _ : Ω ↦ 0) p μ = 0 := by
  sorry