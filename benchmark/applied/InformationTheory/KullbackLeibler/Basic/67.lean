import Mathlib

open MeasureTheory

/-- If KL divergence is zero between conditionals, then the conditional kernels are equal a.e. -/
lemma InformationTheory.condKernel_eq_of_klDiv_zero
    {α β : Type*} [MeasurableSpace α] [MeasurableSpace β]
    (μ : Measure (α × β))
    (K₁ K₂ : α → Measure β)
    (h0 : ∀ᵐ x ∂(μ.map Prod.fst), InformationTheory.klDiv (K₁ x) (K₂ x) = 0) :
    ∀ᵐ x ∂(μ.map Prod.fst), K₁ x = K₂ x := by
  sorry