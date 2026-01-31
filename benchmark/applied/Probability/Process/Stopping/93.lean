import Mathlib

open MeasureTheory

universe u

-- 94. Stopped process is almost surely equal when τ and σ agree a.e.
lemma stoppedValue_ae_eq_of_ae_eq
  {Ω ι β : Type u} {m : MeasurableSpace Ω} {μ : Measure Ω}
  [LinearOrder ι] [Nonempty ι]
  (u : ι → Ω → β)
  (τ σ : Ω → WithTop ι)
  (h : τ =ᵐ[μ] σ) :
  stoppedValue u τ =ᵐ[μ] stoppedValue u σ := by
  sorry