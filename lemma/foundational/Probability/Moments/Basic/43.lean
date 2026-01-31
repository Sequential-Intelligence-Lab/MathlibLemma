import Mathlib

open MeasureTheory

/-! ### Brainstormed lemmas about `moment` -/

/-- For a Dirac measure, the central moment of positive order `p` is zero. 

Note: The original version without the hypothesis `hp : p ≠ 0` is false for `p = 0`,
since then the central moment is `1`, not `0`. -/
lemma centralMoment_dirac
    {Ω : Type*} [MeasurableSpace Ω] [MeasurableSingletonClass Ω]
    {ω : Ω} {p : ℕ} (hp : p ≠ 0) (X : Ω → ℝ) :
    ProbabilityTheory.centralMoment X p (Measure.dirac ω) = 0 := by
  classical
  -- Unfold central moment and moment, then use the Dirac integral.
  simp [ProbabilityTheory.centralMoment, ProbabilityTheory.moment, hp, integral_dirac]