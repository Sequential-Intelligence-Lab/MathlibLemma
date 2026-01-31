import Mathlib

variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory

lemma integral_uniformOn_univ_finset
    [MeasurableSingletonClass Ω]
    [Fintype Ω]
    {β} [NormedAddCommGroup β] [NormedSpace ℝ β]
    [CompleteSpace β]
    {f : Ω → β} :
    ∫ x, f x ∂(ProbabilityTheory.uniformOn (Set.univ : Set Ω)) =
      (1 / (Fintype.card Ω : ℝ)) • (∑ x, f x) := by
  sorry