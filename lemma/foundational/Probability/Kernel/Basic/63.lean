import Mathlib

namespace ProbabilityTheory

noncomputable def Kernel.deterministicComp
    {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.exists_ae_eq_isMarkovKernel_const
    {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    {μ : MeasureTheory.Measure α} (μ' : MeasureTheory.Measure β)
    (hμ' : MeasureTheory.IsProbabilityMeasure μ') (hμ : μ ≠ 0) :
    ∃ κ : Kernel α β,
      (κ =ᵐ[μ] Kernel.const α μ') ∧
      IsMarkovKernel κ := by
  classical
  -- Use `hμ'` as an instance
  haveI := hμ'
  -- Choose the constant kernel as our witness
  refine ⟨Kernel.const α μ', ?_, ?_⟩
  · -- It is trivially a.e.-equal to itself
    exact Filter.EventuallyEq.rfl
  · -- Show the constant kernel is a Markov kernel
    -- `IsMarkovKernel` requires that every fiber measure is a probability measure
    refine
      (show IsMarkovKernel (Kernel.const α μ') from
        ?_) 
    refine ⟨?_⟩
    intro a
    -- Each fiber is just `μ'`, which is a probability measure
    simpa [Kernel.const] using
      (inferInstance : MeasureTheory.IsProbabilityMeasure μ')

end ProbabilityTheory