import Mathlib

open MeasureTheory

lemma condExp_eq_zero_of_integral_zero_on_measurableSets {α}
    {m m₀ : MeasurableSpace α} {μ : Measure α}
    {f : α → ℝ} (hgm : AEStronglyMeasurable[m] f μ)
    (hint : ∀ s, MeasurableSet[m] s → ∫ x in s, f x ∂μ = 0) :
    μ[f|m] =ᵐ[μ] 0 := by
  sorry