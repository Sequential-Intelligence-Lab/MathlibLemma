import Mathlib

/-
Invariant and forward invariant sets
-/
lemma Flow.fromIter_isForwardInvariant {α}
    [TopologicalSpace α] (g : α → α) (hg : Continuous g)
    (s : Set α) (hs : Set.MapsTo g s s) :
    IsForwardInvariant (Flow.fromIter (α := α) hg) s := by
  sorry