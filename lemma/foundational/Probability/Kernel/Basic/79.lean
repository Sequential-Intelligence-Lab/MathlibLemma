import Mathlib

noncomputable section

open ProbabilityTheory

noncomputable def ProbabilityTheory.Kernel.deterministicComp
    {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma ProbabilityTheory.Kernel.sum_const_restrict
    {α β ι : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    [Countable ι]
    (μ : ι → MeasureTheory.Measure β) {s : Set β} (hs : MeasurableSet s) :
    (ProbabilityTheory.Kernel.sum
        (fun n => ProbabilityTheory.Kernel.const α (μ n))).restrict hs
      =
      ProbabilityTheory.Kernel.const α
        ((MeasureTheory.Measure.sum μ).restrict s) := by
  -- Prove equality of kernels by extensionality on points and measurable sets
  ext a t ht
  -- `t ∩ s` is measurable, needed for sum and restrict lemmas
  have hts : MeasurableSet (t ∩ s) := ht.inter hs
  -- Simplify both sides using kernel and measure API
  simp [ProbabilityTheory.Kernel.restrict_apply, 
        ProbabilityTheory.Kernel.sum_apply,
        ProbabilityTheory.Kernel.const_apply,
        MeasureTheory.Measure.restrict_apply,
        MeasureTheory.Measure.sum_apply,
        ht, hs, hts]