import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
open scoped MeasureTheory

lemma moment_nonneg_of_nonneg
    {Ω : Type*} [m : MeasurableSpace Ω] (μ : MeasureTheory.Measure Ω)
    {X : Ω → ℝ} {p : ℕ}
    (hX : 0 ≤ᵐ[μ] X) (hp : Even p) :
    0 ≤ ProbabilityTheory.moment X p μ := by
  sorry