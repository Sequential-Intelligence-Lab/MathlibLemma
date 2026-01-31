import Mathlib

open ProbabilityTheory

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.ofFunOfCountable_const {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    [Countable α] [MeasurableSingletonClass α]
    (μ : MeasureTheory.Measure β) :
    Kernel.ofFunOfCountable (fun _ : α => μ)
      = Kernel.const α μ := by
  sorry