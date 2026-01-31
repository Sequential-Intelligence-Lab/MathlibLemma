import Mathlib

open ProbabilityTheory

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.restrict_subset {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (κ : Kernel α β) {s t : Set β}
    (hs : MeasurableSet s) (ht : MeasurableSet t)
    (hst : s ⊆ t) :
    κ.restrict hs ≤ κ.restrict ht := by
  sorry