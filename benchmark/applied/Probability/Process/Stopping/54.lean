import Mathlib

open MeasureTheory

-- 55. Intersection of two stopping σ-algebras is still contained in the global measurable space.
lemma IsStoppingTime.measurableSpace_inf_le
  {Ω ι : Type*} {m : MeasurableSpace Ω}
  [Preorder ι]
  (f : Filtration ι m) (τ σ : Ω → WithTop ι)
  (hτ : IsStoppingTime f τ)
  (hσ : IsStoppingTime f σ) :
  hτ.measurableSpace ⊓ hσ.measurableSpace ≤ m := by
  sorry