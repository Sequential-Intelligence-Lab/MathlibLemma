import Mathlib

open MeasureTheory

-- 74. If τ is bounded by i, then its σ-algebra is below f i.
lemma IsStoppingTime.measurableSpace_le_filtration
  {Ω ι : Type*} {m : MeasurableSpace Ω}
  [Preorder ι]
  (f : Filtration ι m) (τ : Ω → WithTop ι)
  (hτ : MeasureTheory.IsStoppingTime f τ)
  (i : ι) (hbd : ∀ ω, τ ω ≤ i) :
  (hτ.measurableSpace : MeasurableSpace Ω) ≤ f i := by
  sorry