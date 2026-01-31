import Mathlib

open scoped MeasureTheory

open MeasureTheory

variable {α : Type _} {m m₀ : MeasurableSpace α} {μ : Measure α}

/-- A version of the lemma with the actual conditional expectation from Mathlib. -/
lemma condExp_eq_of_forall_integral_mul_indicator_eq
    {f g : α → ℝ}
    (hf : Integrable f μ) (hg : Integrable g μ)
    (hgm : AEStronglyMeasurable[m] g μ)
    (h : ∀ s, MeasurableSet[m] s →
      ∫ x in s, f x ∂μ = ∫ x in s, g x ∂μ) :
    μ[f|m] =ᵐ[μ] g := by
  sorry