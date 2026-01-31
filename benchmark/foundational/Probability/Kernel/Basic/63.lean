import Mathlib

namespace ProbabilityTheory

noncomputable def Kernel.deterministicComp
    {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.exists_ae_eq_isMarkovKernel_const
    {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    {μ : MeasureTheory.Measure α} (μ' : MeasureTheory.Measure β)
    (hμ' : MeasureTheory.IsProbabilityMeasure μ') (hμ : μ ≠ 0) :
    ∃ κ : Kernel α β,
      (κ =ᵐ[μ] Kernel.const α μ') ∧
      IsMarkovKernel κ := by
  sorry

end ProbabilityTheory