import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open ProbabilityTheory
open MeasureTheory

lemma moment_abs_even
    {Ω : Type*} [MeasurableSpace Ω] {μ : MeasureTheory.Measure Ω}
    (X : Ω → ℝ) {p : ℕ} (hp : Even p) :
    moment (fun ω ↦ |X ω|) p μ =
      moment X p μ := by
  sorry