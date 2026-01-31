import Mathlib

open MeasureTheory
open ProbabilityTheory

noncomputable def deterministicComp
    {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma id_comp_left
    {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (κ : Kernel α β) :
    Kernel.comp Kernel.id κ = κ := by
  simpa using Kernel.id_comp (κ := κ)