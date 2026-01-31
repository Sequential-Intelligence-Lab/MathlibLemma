import Mathlib

-- 14. A stopped process is progressively measurable w.r.t. the induced filtration.
lemma ProgMeasurable.stoppedProcess_subFiltration
  {Ω ι β : Type*}
  [mΩ : MeasurableSpace Ω]
  [Nonempty ι] [LinearOrder ι] [TopologicalSpace ι] [OrderTopology ι]
  [SecondCountableTopology ι] [MeasurableSpace ι] [BorelSpace ι]
  [TopologicalSpace β] [MeasurableSpace β]
  (filt : MeasureTheory.Filtration ι mΩ) (u : ι → Ω → β) (τ : Ω → WithTop ι)
  (hu : MeasureTheory.ProgMeasurable filt u)
  (hτ : MeasureTheory.IsStoppingTime filt τ) :
  MeasureTheory.ProgMeasurable filt (MeasureTheory.stoppedProcess u τ) := by
  sorry