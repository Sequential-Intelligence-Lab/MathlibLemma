import Mathlib

noncomputable def ProbabilityTheory.Kernel.deterministicComp
    {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma ProbabilityTheory.Kernel.restrict_inter
    {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (κ : ProbabilityTheory.Kernel α β) {s t : Set β}
    (hs : MeasurableSet s) (ht : MeasurableSet t) :
    (κ.restrict hs).restrict ht =
      κ.restrict (hs.inter ht) := by
  sorry