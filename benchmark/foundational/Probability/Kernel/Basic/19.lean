import Mathlib

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.copy_symm (α : Type*) [MeasurableSpace α] :
    ProbabilityTheory.Kernel.comp
      (ProbabilityTheory.Kernel.swap α α)
      (ProbabilityTheory.Kernel.copy α)
      =
      ProbabilityTheory.Kernel.copy α := by
  sorry