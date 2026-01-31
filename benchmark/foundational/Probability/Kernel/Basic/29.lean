import Mathlib

open MeasureTheory
open ProbabilityTheory

noncomputable def ProbabilityTheory.Kernel.deterministicComp
    {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma ProbabilityTheory.Kernel.swap_dirac_eq {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (ab : α × β) :
    Kernel.swap α β ab = Measure.dirac ab.swap := by
  sorry