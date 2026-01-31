import Mathlib

open MeasureTheory

-- 19. Stopped value of a martingale is integrable if the time is bounded.
lemma integrable_stoppedValue_martingale
  {Ω ι : Type*} {m : MeasurableSpace Ω} (μ : Measure Ω)
  [LinearOrder ι] [TopologicalSpace ι] [OrderTopology ι] [FirstCountableTopology ι]
  [Nonempty ι]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
  (filt : Filtration ι m) (u : ι → Ω → E)
  (hu : Martingale u filt μ)
  (τ : Ω → WithTop ι) (hτ : IsStoppingTime filt τ)
  {N : ι} (hbd : ∀ ω, τ ω ≤ N) :
  Integrable (stoppedValue u τ) μ := by
  sorry