import Mathlib

open MeasureTheory
open ProbabilityTheory

namespace ProbabilityTheory

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.piecewise_ae_eq {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    {μ : Measure α} {s : Set α} (hs : MeasurableSet s)
    [DecidablePred (fun x => x ∈ s)]
    [DecidablePred (fun x => x ∈ sᶜ)]
    {κ η κ' η' : Kernel α β}
    (hκ : κ =ᵐ[μ.restrict s] κ')
    (hη : η =ᵐ[μ.restrict sᶜ] η') :
    Kernel.piecewise hs κ η =ᵐ[μ] Kernel.piecewise hs κ' η' := by
  sorry

end ProbabilityTheory