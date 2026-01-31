import Mathlib

-- 81. StoppedProcess is progressively measurable when viewed on the product.
lemma stoppedProcess_progMeasurable_in_prod
  {Ω ι β : Type*} {m : MeasurableSpace Ω}
  [LinearOrder ι] [TopologicalSpace ι] [OrderClosedTopology ι]
  [SecondCountableTopology ι] [MeasurableSpace ι] [BorelSpace ι]
  [TopologicalSpace β] [MeasurableSpace β] [Nonempty ι]
  (filt : MeasureTheory.Filtration ι m) (u : ι → Ω → β)
  (hu : MeasureTheory.ProgMeasurable filt u)
  (τ : Ω → WithTop ι) (hτ : MeasureTheory.IsStoppingTime filt τ) :
  Measurable fun p : ι × Ω =>
    MeasureTheory.stoppedProcess u τ p.1 p.2 := by
  sorry