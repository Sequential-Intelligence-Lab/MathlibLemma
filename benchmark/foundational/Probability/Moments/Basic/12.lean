import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open MeasureTheory ProbabilityTheory

lemma moment_neg_odd
    {Ω : Type*} {m : MeasurableSpace Ω} {μ : Measure Ω}
    [IsFiniteMeasure μ]
    {X : Ω → ℝ} {p : ℕ} (hp : Odd p) :
    ProbabilityTheory.moment (-X) p μ =
      - ProbabilityTheory.moment X p μ := by
  sorry