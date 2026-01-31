import Mathlib

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.id_deterministic_eq {α : Type*}
    [MeasurableSpace α] :
    (ProbabilityTheory.Kernel.id : ProbabilityTheory.Kernel α α) =
      ProbabilityTheory.Kernel.deterministic id measurable_id := by
  sorry