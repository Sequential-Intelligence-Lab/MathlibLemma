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
  -- Interpret the AE equalities on restricted measures as implications on μ
  have hκμ :
      ∀ᵐ x ∂ μ, x ∈ s → κ x = κ' x :=
    (ae_restrict_iff' hs).1 hκ
  have hημ :
      ∀ᵐ x ∂ μ, x ∈ sᶜ → η x = η' x :=
    (ae_restrict_iff' hs.compl).1 hη
  -- Combine the two AE statements
  have h_all :
      ∀ᵐ x ∂ μ,
        (x ∈ s → κ x = κ' x) ∧ (x ∈ sᶜ → η x = η' x) :=
    hκμ.and hημ
  -- Deduce AE equality of the piecewise kernels
  refine h_all.mono ?_
  intro x hx
  rcases hx with ⟨hxκ, hxη⟩
  by_cases hxs : x ∈ s
  · -- On s, both piecewise kernels use κ / κ'
    have h_eq : κ x = κ' x := hxκ hxs
    simp [Kernel.piecewise, hs, hxs, h_eq]
  · -- On sᶜ, both piecewise kernels use η / η'
    have hxcs : x ∈ sᶜ := by
      simpa [Set.mem_compl] using hxs
    have h_eq : η x = η' x := hxη hxcs
    simp [Kernel.piecewise, hs, hxs, hxcs, h_eq]

end ProbabilityTheory