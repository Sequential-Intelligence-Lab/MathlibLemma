import Mathlib

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.piecewise_symm {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (s : Set α) (hs : MeasurableSet s)
    [DecidablePred (fun x => x ∈ s)]
    (κ η : ProbabilityTheory.Kernel α β) :
    ProbabilityTheory.Kernel.piecewise hs κ η =
      ProbabilityTheory.Kernel.piecewise hs.compl η κ := by
  sorry