import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

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
  have h_main : MeasureTheory.ProgMeasurable filt (MeasureTheory.stoppedProcess u τ) := by
    have h1 : MeasureTheory.ProgMeasurable filt (MeasureTheory.stoppedProcess u τ) :=
      hu.stoppedProcess hτ
    exact h1
  exact h_main