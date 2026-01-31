import Mathlib

open MeasureTheory ProbabilityTheory
open scoped ENNReal

variable {Ω : Type*} [MeasurableSpace Ω]

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

lemma lintegral_uniformOn_const
    [MeasurableSingletonClass Ω]
    {s : Set Ω} (hs : s.Finite) (hs' : s.Nonempty)
    {c : ℝ≥0∞} :
    ∫⁻ x, c ∂(ProbabilityTheory.uniformOn (Ω := Ω) s) = c := by
  sorry