import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open MeasureTheory
open ProbabilityTheory

lemma centralMoment_zero_mean
    {Ω : Type*} {m : MeasurableSpace Ω}
    (X : Ω → ℝ) {p : ℕ} (μ : MeasureTheory.Measure Ω)
    (hμ : μ[X] = 0) :
    ProbabilityTheory.centralMoment X p μ =
      ProbabilityTheory.moment X p μ := by
  sorry