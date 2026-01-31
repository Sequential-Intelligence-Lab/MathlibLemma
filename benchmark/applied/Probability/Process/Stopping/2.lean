import Mathlib

-- 3. Minimum of a family of stopping times indexed by a finite type is a stopping time.
lemma MeasureTheory.IsStoppingTime.iInf_finite
  {Ω ι ι' : Type*} [Preorder ι] [CompleteLattice ι] [Fintype ι'] {m : MeasurableSpace Ω}
  (f : MeasureTheory.Filtration ι m) (τ : ι' → Ω → WithTop ι)
  (hτ : ∀ j, MeasureTheory.IsStoppingTime f (τ j)) :
  MeasureTheory.IsStoppingTime f (fun ω => ⨅ j : ι', τ j ω) := by
  sorry