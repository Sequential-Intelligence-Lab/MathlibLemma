import Mathlib

open ProbabilityTheory
open MeasureTheory

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.comapRight_const {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    {f : γ → β} (hf : MeasurableEmbedding f) (μ : Measure β) :
    Kernel.comapRight (Kernel.const α μ) hf =
      Kernel.const α (Measure.comap f μ) := by
  sorry