import Mathlib

open MeasureTheory
open ProbabilityTheory

namespace ProbabilityTheory

noncomputable def Kernel.deterministicComp
    {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.restrict_null
    {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (κ : Kernel α β) {s : Set β}
    (hs : MeasurableSet s) (hμ : ∀ a, κ a s = 0) :
    κ.restrict hs = 0 := by
  sorry

end ProbabilityTheory