import Mathlib

-- 93. Stopped value is almost surely equal when τ and σ agree a.e.
lemma stoppedValue_ae_eq_of_ae_eq
  {Ω ι β : Type*} {m : MeasurableSpace Ω} {μ : MeasureTheory.Measure Ω}
  [Nonempty ι]
  (u : ι → Ω → β)
  (τ σ : Ω → WithTop ι)
  (h : τ =ᵐ[μ] σ) :
  MeasureTheory.stoppedValue u τ =ᵐ[μ] MeasureTheory.stoppedValue u σ := by
  -- Expand the a.e. equality pointwise
  refine h.mono ?_ 
  intro ω hω
  -- Now `hω : τ ω = σ ω`; rewrite in the definition of `stoppedValue`
  simpa [MeasureTheory.stoppedValue, hω]