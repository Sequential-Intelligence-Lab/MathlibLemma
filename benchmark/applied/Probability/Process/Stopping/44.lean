import Mathlib

-- 45. Adaptedness of stopped value from progressive measurability.
open MeasureTheory

lemma ProgMeasurable.adapted_stoppedValue
  {Ω ι β : Type*} {m : MeasurableSpace Ω}
  [Nonempty ι]
  [Preorder ι] [TopologicalSpace ι] [OrderTopology ι]
  [SecondCountableTopology ι] [MeasurableSpace ι] [BorelSpace ι]
  [TopologicalSpace β]
  (filt : Filtration ι m) (u : ι → Ω → β)
  (hu : MeasureTheory.ProgMeasurable filt u)
  (τ : Ω → WithTop ι)
  (hτ : MeasureTheory.IsStoppingTime filt τ) :
  Adapted filt (fun _ ω => MeasureTheory.stoppedValue u τ ω) := by
  sorry