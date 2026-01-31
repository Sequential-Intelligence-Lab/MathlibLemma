import Mathlib

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

open MeasureTheory
open ProbabilityTheory

lemma Kernel.const_restrict {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    {μ : Measure β} {s : Set β} (hs : MeasurableSet s) :
    (Kernel.const α μ).restrict hs =
      Kernel.const α (μ.restrict s) := by
  sorry