import Mathlib

open MeasureTheory

/-! ### Brainstormed lemmas about `moment` -/
lemma centralMoment_dirac
    {Ω : Type*} [MeasurableSpace Ω] [MeasurableSingletonClass Ω]
    {ω : Ω} {p : ℕ} (X : Ω → ℝ) :
    ProbabilityTheory.centralMoment X p (Measure.dirac ω) = 0 := by
  sorry