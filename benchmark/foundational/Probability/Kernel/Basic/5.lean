import Mathlib

open scoped MeasureTheory
open MeasureTheory

noncomputable def ProbabilityTheory.Kernel.deterministicComp
    {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma ProbabilityTheory.Kernel.deterministic_unique
    {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    {κ : ProbabilityTheory.Kernel α β} {f : α → β}
    (hf : Measurable f)
    (hκ : ∀ a, κ a = Measure.dirac (f a)) :
    κ = ProbabilityTheory.Kernel.deterministic f hf := by
  sorry