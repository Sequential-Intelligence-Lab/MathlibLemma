import Mathlib

noncomputable section

open MeasureTheory
open ProbabilityTheory

noncomputable def Kernel.deterministicComp
    {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

/-- A simple lemma involving `Kernel.boolKernel` and `Kernel.comp`.
    The proof is omitted with `sorry`; only the statement is made type-correct. -/
lemma Kernel.boolKernel_comp_left
    (μ ν : Measure Bool)
    (κ : ProbabilityTheory.Kernel Bool Bool) :
    ProbabilityTheory.Kernel.comp
        κ
        (ProbabilityTheory.Kernel.boolKernel μ ν)
      =
      ProbabilityTheory.Kernel.comp
        κ
        (ProbabilityTheory.Kernel.boolKernel μ ν) := by
  sorry

end