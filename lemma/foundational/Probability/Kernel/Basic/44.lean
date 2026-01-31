import Mathlib

open ProbabilityTheory

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.restrict_empty {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (κ : Kernel α β) :
    κ.restrict (MeasurableSet.empty : MeasurableSet (∅ : Set β)) = 0 := by
  -- Extensionality on kernels: reduce to equality of measures for all `a` and measurable sets `s`.
  ext a s hs
  -- By definition, `(κ.restrict hsEmpty) a s = κ a (s ∩ ∅)`, and the zero kernel gives `0`.
  simp [Kernel.restrict, Set.inter_empty, hs]