import Mathlib

-- 83. Stopped value is measurable w.r.t. any σ-algebra containing τ's σ-algebra and under which u is progressive.
lemma stoppedValue_measurable_of_le
  {Ω ι β : Type*} {m : MeasurableSpace Ω}
  [Nonempty ι] [LinearOrder ι]
  [TopologicalSpace ι] [OrderTopology ι] [SecondCountableTopology ι]
  [MeasurableSpace ι] [BorelSpace ι] [TopologicalSpace β]
  [MeasurableSpace β]
  (filt : MeasureTheory.Filtration ι m) (u : ι → Ω → β)
  (hu : MeasureTheory.ProgMeasurable filt u)
  (τ : Ω → WithTop ι) (hτ : MeasureTheory.IsStoppingTime filt τ)
  {m' : MeasurableSpace Ω} (hle : hτ.measurableSpace ≤ m') :
  @Measurable Ω β m' _ (MeasureTheory.stoppedValue u τ) := by
  sorry