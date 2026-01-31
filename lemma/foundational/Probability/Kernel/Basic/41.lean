import Mathlib

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.restrict_restrict_subset {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (κ : ProbabilityTheory.Kernel α β) {s t : Set β}
    (hs : MeasurableSet s) (ht : MeasurableSet t)
    (hst : s ⊆ t) :
    (κ.restrict hs).restrict ht = κ.restrict hs := by
  -- extensionality on kernels: reduce to equality on all measurable sets
  ext a u hu
  -- unfold the two successive restrictions on the left-hand side
  have h_meas_ut : MeasurableSet (u ∩ t) := hu.inter ht
  simp [ProbabilityTheory.Kernel.restrict_apply, hu, h_meas_ut, hs] -- expands both sides
  -- After simp, the goal is:
  --   κ a ((u ∩ t) ∩ s) = κ a (u ∩ s)
  -- Reduce this to set equality:
  apply congrArg (fun (v : Set β) => (κ a) v)
  -- prove the set-theoretic equality using the subset assumption hst
  ext x; constructor
  · intro hx
    rcases hx with ⟨⟨hxU, hxT⟩, hxS⟩
    exact ⟨hxU, hxS⟩
  · intro hx
    rcases hx with ⟨hxU, hxS⟩
    have hxT : x ∈ t := hst hxS
    exact ⟨⟨hxU, hxT⟩, hxS⟩