import Mathlib

open ProbabilityTheory
open MeasureTheory
open scoped BigOperators

noncomputable def Kernel.deterministicComp
    {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.sum_const_apply
    {α β ι : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    [Countable ι]
    (μ : ι → Measure β) (a : α) :
    (Kernel.sum (fun n => Kernel.const α (μ n)) a)
      = Measure.sum μ := by
  -- Unfold the definition of `Kernel.sum` at point `a`
  change Measure.sum (fun n => (Kernel.const α (μ n)) a) = Measure.sum μ
  -- Identify the function inside `Measure.sum` with `μ`
  have hfun : (fun n => (Kernel.const α (μ n)) a) = μ := by
    funext n
    simp
  -- Rewrite using the function equality
  simpa [hfun]