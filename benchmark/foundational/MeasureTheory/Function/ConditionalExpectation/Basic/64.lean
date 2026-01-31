import Mathlib

open MeasureTheory

lemma condExp_sub_eq_zero_iff {α}
    {m m₀ : MeasurableSpace α} {μ : Measure α}
    {f g h : α → ℝ}
    (hf : AEStronglyMeasurable[m] f μ)
    (hg : AEStronglyMeasurable[m] g μ) :
    h =ᵐ[μ] 0 ↔
      ∀ s, MeasurableSet[m] s → ∫ x in s, f x ∂μ = ∫ x in s, g x ∂μ := by
  sorry