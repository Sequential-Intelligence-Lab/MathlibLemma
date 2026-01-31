import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open MeasureTheory
open scoped ProbabilityTheory

lemma moment_neg_even
    {Ω : Type*} [MeasurableSpace Ω] (μ : Measure Ω)
    (X : Ω → ℝ) (p : ℕ) (hp : Even p) :
    ProbabilityTheory.moment (-X) p μ =
      ProbabilityTheory.moment X p μ := by
  sorry