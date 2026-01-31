import Mathlib

open MeasureTheory

-- 46. Conditional expectation of stopped value given stopped σ-algebra equals stopped value for martingale.
lemma condexp_stoppedValue_martingale
  {Ω ι : Type*} {m : MeasurableSpace Ω} {μ : Measure Ω}
  [LinearOrder ι] [TopologicalSpace ι] [OrderTopology ι] [FirstCountableTopology ι]
  [Nonempty ι]
  [NeZero μ]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
  (filt : Filtration ι m)
  (u : ι → Ω → E) (hu : Martingale u filt μ)
  (τ : Ω → WithTop ι) (hτ : IsStoppingTime filt τ)
  [SigmaFinite (μ.trim hτ.measurableSpace_le)] :
  μ[(fun ω ↦ stoppedValue u τ ω)
      | hτ.measurableSpace]
    =ᵐ[μ]
  stoppedValue u τ := by
  sorry