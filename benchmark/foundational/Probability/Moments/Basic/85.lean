import Mathlib

open MeasureTheory

/-! ### Brainstormed lemmas about `moment` -/
lemma integrable_exp_mul_bounded
    {Ω : Type*} {m : MeasurableSpace Ω} (μ : Measure Ω)
    [IsFiniteMeasure μ]
    (X : Ω → ℝ) {a b t : ℝ}
    (hX : AEMeasurable X μ)
    (hb : ∀ᵐ ω ∂μ, X ω ∈ Set.Icc a b) :
    Integrable (fun ω ↦ Real.exp (t * X ω)) μ := by
  sorry