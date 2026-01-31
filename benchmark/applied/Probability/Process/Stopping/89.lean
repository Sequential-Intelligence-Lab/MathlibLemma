import Mathlib

open MeasureTheory

-- 90. Stopped process is measurable w.r.t. the product of time Borel and stopping σ-algebra.
lemma measurable_stoppedProcess_prod_stopping
  {Ω ι β : Type*} {m : MeasurableSpace Ω}
  [LinearOrder ι] [TopologicalSpace ι] [OrderTopology ι] [SecondCountableTopology ι]
  [MeasurableSpace ι] [BorelSpace ι] [TopologicalSpace β] [MeasurableSpace β]
  [Nonempty ι]
  (filt : Filtration ι m)
  (u : ι → Ω → β)
  (hu : ProgMeasurable filt u)
  (τ : Ω → WithTop ι)
  (hτ : IsStoppingTime filt τ) :
  Measurable (fun p : ι × Ω =>
    stoppedProcess u τ p.1 p.2) := by
  sorry