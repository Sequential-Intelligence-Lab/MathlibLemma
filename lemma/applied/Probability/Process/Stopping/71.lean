import Mathlib

-- 72. For countable-valued stopping time, its range is countable.
lemma IsStoppingTime.countable_range
  {Ω ι : Type*} {m : MeasurableSpace Ω}
  [Preorder ι] [Countable ι]
  (f : MeasureTheory.Filtration ι m) (τ : Ω → WithTop ι)
  (hτ : MeasureTheory.IsStoppingTime f τ) :
  (Set.range τ).Countable := by
  classical
  -- `WithTop ι` is countable since `ι` is countable
  have h_univ : (Set.univ : Set (WithTop ι)).Countable :=
    Set.countable_univ
  -- `range τ` is a subset of `univ`
  have h_sub : Set.range τ ⊆ (Set.univ : Set (WithTop ι)) := by
    intro x hx
    simp
  -- Any subset of a countable set is countable
  exact Set.Countable.mono h_sub h_univ