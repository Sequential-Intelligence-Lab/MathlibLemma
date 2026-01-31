import Mathlib

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.swap_map_snd {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (ab : α × β) :
    MeasureTheory.Measure.map Prod.snd
      (ProbabilityTheory.Kernel.swap α β ab)
      = MeasureTheory.Measure.dirac ab.1 := by
  sorry