import Mathlib

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.copy_marginal_fst {α : Type*}
    [MeasurableSpace α] (a : α) :
    (MeasureTheory.Measure.map Prod.fst
        (ProbabilityTheory.Kernel.copy α a)) =
      MeasureTheory.Measure.dirac a := by
  sorry