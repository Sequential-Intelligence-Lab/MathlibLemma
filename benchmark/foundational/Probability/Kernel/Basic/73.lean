import Mathlib

noncomputable def ProbabilityTheory.Kernel.deterministicComp
    {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma ProbabilityTheory.Kernel.ofFunOfCountable_apply
    {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    [Countable α] [MeasurableSingletonClass α]
    (f : α → MeasureTheory.Measure β) (a : α) :
    ProbabilityTheory.Kernel.ofFunOfCountable f a = f a := by
  sorry