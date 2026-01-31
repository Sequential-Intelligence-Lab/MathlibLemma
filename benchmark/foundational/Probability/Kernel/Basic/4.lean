import Mathlib

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.deterministic_map_preimage {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    {f : α → β} (hf : Measurable f) {h : β → γ} (hh : Measurable h)
    (a : α) :
    MeasureTheory.Measure.map h
        (ProbabilityTheory.Kernel.deterministic f hf a) =
      ProbabilityTheory.Kernel.deterministic (h ∘ f) (hh.comp hf) a := by
  sorry