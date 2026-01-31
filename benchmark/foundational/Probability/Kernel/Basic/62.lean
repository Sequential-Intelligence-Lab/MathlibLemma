import Mathlib

open scoped MeasureTheory
open MeasureTheory ProbabilityTheory

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.exists_ae_eq_isMarkovKernel_unique {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    {μ : Measure α}
    {κ η : Kernel α β}
    (hκ : ∀ᵐ a ∂μ, IsProbabilityMeasure (κ a))
    (hη : ∀ᵐ a ∂μ, IsProbabilityMeasure (η a))
    (h : κ =ᵐ[μ] η) :
    (∃ κ' : Kernel α β, κ =ᵐ[μ] κ' ∧ IsMarkovKernel κ') →
      (∃ η' : Kernel α β, η =ᵐ[μ] η' ∧ IsMarkovKernel η') := by
  sorry