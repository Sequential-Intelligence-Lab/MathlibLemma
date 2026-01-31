import Mathlib

open ProbabilityTheory

noncomputable def Kernel_deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel_deterministic_comp_eq {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    {f : α → β} {g : β → γ} (hf : Measurable f) (hg : Measurable g) :
    Kernel.deterministic (g ∘ f) (hg.comp hf) =
      (Kernel.deterministic g hg) ∘ₖ (Kernel.deterministic f hf) := by
  sorry