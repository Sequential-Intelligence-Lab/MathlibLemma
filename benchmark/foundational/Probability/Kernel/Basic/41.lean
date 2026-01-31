import Mathlib

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.restrict_restrict_subset {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (κ : ProbabilityTheory.Kernel α β) {s t : Set β}
    (hs : MeasurableSet s) (ht : MeasurableSet t)
    (hst : s ⊆ t) :
    (κ.restrict hs).restrict ht = κ.restrict hs := by
  sorry