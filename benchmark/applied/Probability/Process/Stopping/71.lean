import Mathlib

-- 72. For countable-valued stopping time, its range is countable.
lemma IsStoppingTime.countable_range
  {Ω ι : Type*} {m : MeasurableSpace Ω}
  [Preorder ι] [Countable ι]
  (f : MeasureTheory.Filtration ι m) (τ : Ω → WithTop ι)
  (hτ : MeasureTheory.IsStoppingTime f τ) :
  (Set.range τ).Countable := by
  sorry