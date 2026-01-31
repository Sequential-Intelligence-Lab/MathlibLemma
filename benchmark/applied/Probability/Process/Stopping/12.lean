import Mathlib

-- 13. Stopped value of a progressively measurable process is measurable.
lemma MeasureTheory.ProgMeasurable.measurable_stoppedValue'
  {Ω ι β : Type*} {m : MeasurableSpace Ω}
  [Nonempty ι] [LinearOrder ι] [TopologicalSpace ι] [OrderTopology ι]
  [SecondCountableTopology ι] [MeasurableSpace ι] [BorelSpace ι]
  [TopologicalSpace β] [MeasurableSpace β]
  (filt : MeasureTheory.Filtration ι m) (u : ι → Ω → β) (τ : Ω → WithTop ι)
  (hu : MeasureTheory.ProgMeasurable filt u)
  (hτ : MeasureTheory.IsStoppingTime filt τ) :
  Measurable (MeasureTheory.stoppedValue u τ) := by
  sorry