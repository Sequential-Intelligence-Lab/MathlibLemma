import Mathlib

-- 15. Stopped process is adapted with respect to the stopped filtration.
lemma Adapted.adapted_stoppedProcess_stoppingFiltration
  {Ω ι β : Type*} {m : MeasurableSpace Ω}
  [Nonempty ι] [LinearOrder ι]
  [TopologicalSpace ι] [OrderTopology ι] [SecondCountableTopology ι]
  [MeasurableSpace ι] [BorelSpace ι] [TopologicalSpace β]
  (filt : MeasureTheory.Filtration ι m) (u : ι → Ω → β) (τ : Ω → WithTop ι)
  (hu : MeasureTheory.Adapted filt u)
  (hτ : MeasureTheory.IsStoppingTime filt τ) :
  MeasureTheory.Adapted filt (MeasureTheory.stoppedProcess u τ) := by
  sorry