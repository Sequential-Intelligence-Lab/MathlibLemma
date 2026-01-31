import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
open MeasureTheory

lemma aemeasurable_exp_mul'
    {Ω : Type*} {m : MeasurableSpace Ω} (μ : Measure Ω)
    (X : Ω → ℝ) (t : ℝ)
    (hX : AEMeasurable X μ) :
    AEStronglyMeasurable (fun ω ↦ Real.exp (t * X ω)) μ := by
  sorry