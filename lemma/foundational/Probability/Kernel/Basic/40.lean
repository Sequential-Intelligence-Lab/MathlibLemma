import Mathlib

open ProbabilityTheory

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.restrict_subset {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (κ : Kernel α β) {s t : Set β}
    (hs : MeasurableSet s) (ht : MeasurableSet t)
    (hst : s ⊆ t) :
    κ.restrict hs ≤ κ.restrict ht := by
  -- Order on kernels is pointwise in `α`
  intro a
  -- Order on measures is pointwise in sets
  intro u
  -- Evaluate both restricted kernels: they correspond to restricting
  -- each fiber measure to `s` and `t`, i.e. intersections with `s` and `t`.
  simp [Kernel.restrict_apply, hs, ht]
  -- We reduced to monotonicity of the measure κ a w.r.t. set inclusion.
  have hsubset : u ∩ s ⊆ u ∩ t := by
    intro x hx
    rcases hx with ⟨hxU, hxS⟩
    exact ⟨hxU, hst hxS⟩
  exact (κ a).mono hsubset