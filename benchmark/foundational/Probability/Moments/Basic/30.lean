import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma centralMoment_nonneg_even
    {Ω : Type*} {m : MeasurableSpace Ω}
    {X : Ω → ℝ} {p : ℕ} {μ : MeasureTheory.Measure Ω} (hp : Even p) :
    0 ≤ ProbabilityTheory.centralMoment X p μ := by
  sorry