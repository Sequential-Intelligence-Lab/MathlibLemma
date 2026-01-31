import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma centralMoment_smul_left_even
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : MeasureTheory.Measure Ω) {X : Ω → ℝ} {p : ℕ} (a : ℝ) (hp : Even p) :
    ProbabilityTheory.centralMoment (a • X) p μ =
      |a| ^ p * ProbabilityTheory.centralMoment X p μ := by
  sorry