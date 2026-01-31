import Mathlib

noncomputable def ProbabilityTheory.Kernel.deterministicComp
    {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma ProbabilityTheory.Kernel.restrict_inter
    {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (κ : ProbabilityTheory.Kernel α β) {s t : Set β}
    (hs : MeasurableSet s) (ht : MeasurableSet t) :
    (κ.restrict hs).restrict ht =
      κ.restrict (hs.inter ht) := by
  classical
  -- extensionality for kernels: reduce to equality of measures on measurable sets
  ext a u hu
  -- unfold kernel restriction into measure restriction, then simplify via
  -- `Measure.restrict_apply` and set-theoretic intersection lemmas
  simp [ProbabilityTheory.Kernel.restrict,
        MeasureTheory.Measure.restrict_apply,
        hu, hs, ht,
        Set.inter_assoc, Set.inter_left_comm, Set.inter_comm]