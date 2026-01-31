import Mathlib

noncomputable def ProbabilityTheory.Kernel.deterministicComp
    {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma ProbabilityTheory.Kernel.boolKernel_apply_false
    {α : Type*}
    [MeasurableSpace α]
    {μ ν : MeasureTheory.Measure α} :
    ProbabilityTheory.Kernel.boolKernel μ ν false = μ := by
  sorry