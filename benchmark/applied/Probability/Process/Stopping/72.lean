import Mathlib

open MeasureTheory

-- 73. Measurability of τ with respect to any σ-algebra containing its stopping σ-algebra.
lemma IsStoppingTime.measurable_of_le
  {Ω ι : Type*} {m : MeasurableSpace Ω}
  [Preorder ι] [TopologicalSpace ι] [OrderTopology ι] [SecondCountableTopology ι]
  [MeasurableSpace (WithTop ι)]
  (f : Filtration ι m) (τ : Ω → WithTop ι)
  (hτ : MeasureTheory.IsStoppingTime f τ)
  {m' : MeasurableSpace Ω} (hle : hτ.measurableSpace ≤ m') :
  @Measurable Ω (WithTop ι) m' _ τ := by
  sorry