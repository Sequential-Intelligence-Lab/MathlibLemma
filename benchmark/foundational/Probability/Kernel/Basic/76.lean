import Mathlib

noncomputable def ProbabilityTheory.Kernel.deterministicComp
    {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma ProbabilityTheory.Kernel.ofFunOfCountable_comapRight
    {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    [Countable α] [MeasurableSingletonClass α]
    (f : α → MeasureTheory.Measure β) {g : γ → β}
    (hg : MeasurableEmbedding g) :
    ProbabilityTheory.Kernel.comapRight
        (ProbabilityTheory.Kernel.ofFunOfCountable f) hg =
      ProbabilityTheory.Kernel.ofFunOfCountable
        (fun a => MeasureTheory.Measure.comap g (f a)) := by
  sorry