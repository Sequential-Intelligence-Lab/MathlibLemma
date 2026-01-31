import Mathlib

open ProbabilityTheory

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

namespace ProbabilityTheory

variable {α β γ : Type*}
  [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

lemma Kernel.piecewise_comp_left
    {s : Set α} (hs : MeasurableSet s)
    [DecidablePred (fun x : α => x ∈ s)]
    (κ₁ κ₂ : Kernel α β) (η : Kernel β γ) :
    η ∘ₖ Kernel.piecewise hs κ₁ κ₂ =
      Kernel.piecewise hs (η ∘ₖ κ₁) (η ∘ₖ κ₂) := by
  sorry

end ProbabilityTheory