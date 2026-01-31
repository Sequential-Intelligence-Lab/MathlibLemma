import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma moment_map_identDistrib
    {Ω Ω' : Type*} {m : MeasurableSpace Ω} {m' : MeasurableSpace Ω'}
    {μ : MeasureTheory.Measure Ω} {μ' : MeasureTheory.Measure Ω'}
    {X : Ω → ℝ} {Y : Ω' → ℝ} {p : ℕ}
    (h : ProbabilityTheory.IdentDistrib X Y μ μ') :
    ProbabilityTheory.moment X p μ =
      ProbabilityTheory.moment Y p μ' := by
  sorry

/-! ### Brainstormed lemmas about `centralMoment` -/