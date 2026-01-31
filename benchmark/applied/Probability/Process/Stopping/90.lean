import Mathlib

open scoped MeasureTheory

-- 91. Stopped process is progressively measurable with respect to the minimal right-continuous filtration.
lemma stoppedProcess_progMeasurable_rightCont
  {Ω ι β : Type*} {m : MeasurableSpace Ω}
  [LinearOrder ι] [TopologicalSpace ι] [OrderTopology ι]
  [SecondCountableTopology ι] [MeasurableSpace ι] [BorelSpace ι]
  [TopologicalSpace β] [Nonempty ι]
  (filt : MeasureTheory.Filtration ι m)
  (u : ι → Ω → β)
  (hu : MeasureTheory.ProgMeasurable filt u)
  (τ : Ω → WithTop ι)
  (hτ : MeasureTheory.IsStoppingTime filt τ)
  (hrc : ∀ i, filt i = ⨅ j, ⨅ (_ : j > i), filt j) :
  MeasureTheory.ProgMeasurable filt (MeasureTheory.stoppedProcess u τ) := by
  sorry