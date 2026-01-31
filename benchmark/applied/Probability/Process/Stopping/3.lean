import Mathlib

open scoped BigOperators

-- 4. Maximum of a family of stopping times indexed by a finite type is a stopping time.
lemma MeasureTheory.IsStoppingTime.iSup_finite
  {Ω ι ι' : Type*} {m : MeasurableSpace Ω}
  [CompleteLattice ι] [Fintype ι']  -- ensure WithTop ι has SupSet
  (f : Filtration ι m) (τ : ι' → Ω → WithTop ι)
  (hτ : ∀ j, MeasureTheory.IsStoppingTime f (τ j)) :
  MeasureTheory.IsStoppingTime f (fun ω => ⨆ j, τ j ω) := by
  sorry