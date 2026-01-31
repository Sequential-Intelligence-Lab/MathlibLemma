import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma centralMoment_add_const'
    {Ω : Type*} {m : MeasurableSpace Ω}
    {X : Ω → ℝ} {p : ℕ} {μ : MeasureTheory.Measure Ω} (c : ℝ) :
    ProbabilityTheory.centralMoment (fun ω ↦ c + X ω) p μ =
      ProbabilityTheory.centralMoment X p μ := by
  sorry