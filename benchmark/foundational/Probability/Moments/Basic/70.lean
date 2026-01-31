import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open MeasureTheory
open ProbabilityTheory

lemma cgf_comp_measurable_equiv
    {Ω Ω' : Type*} {m : MeasurableSpace Ω} {m' : MeasurableSpace Ω'}
    (e : MeasurableEquiv Ω Ω') (μ : Measure Ω)
    (X : Ω' → ℝ) :
    ProbabilityTheory.cgf (X ∘ e) μ =
      ProbabilityTheory.cgf X (Measure.map e μ) := by
  sorry