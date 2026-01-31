import Mathlib

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.comapRight_comp {α β γ δ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ] [MeasurableSpace δ]
    (κ : ProbabilityTheory.Kernel α β) {f : γ → β} {g : δ → γ}
    (hf : MeasurableEmbedding f) (hg : MeasurableEmbedding g) :
    ProbabilityTheory.Kernel.comapRight
        (ProbabilityTheory.Kernel.comapRight κ hf) hg =
      ProbabilityTheory.Kernel.comapRight κ (hf.comp hg) := by
  sorry