import Mathlib

-- 75. Optional sampling for bounded stopping times of continuous-time martingales.
lemma martingale_stoppedProcess
  {Ω ι : Type*} {m : MeasurableSpace Ω} (μ : MeasureTheory.Measure Ω)
  [LinearOrder ι] [TopologicalSpace ι] [OrderTopology ι] [FirstCountableTopology ι]
  [Nonempty ι]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
  (filt : MeasureTheory.Filtration ι m) (u : ι → Ω → E)
  (hu : MeasureTheory.Martingale u filt μ)
  (τ : Ω → WithTop ι) (hτ : MeasureTheory.IsStoppingTime filt τ)
  {N : ι} (hbd : ∀ ω, τ ω ≤ N) :
  MeasureTheory.Martingale (MeasureTheory.stoppedProcess u τ) filt μ := by
  sorry