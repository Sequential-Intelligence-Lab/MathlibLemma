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
  sorry