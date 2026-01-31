import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
open MeasureTheory

lemma integrable_exp_mul_bounded_above
    {Ω : Type*} {m : MeasurableSpace Ω} (μ : Measure Ω)
    [IsFiniteMeasure μ]
    (X : Ω → ℝ) (t b : ℝ) (ht : 0 ≤ t)
    (hX : AEMeasurable X μ)
    (hb : ∀ᵐ ω ∂μ, X ω ≤ b) :
    Integrable (fun ω ↦ Real.exp (t * X ω)) μ := by
  sorry