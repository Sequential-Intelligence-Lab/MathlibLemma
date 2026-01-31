import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.iter_fromIter_eq {α} [TopologicalSpace α]
    (g : α → α) (hg : Continuous g) (n : ℕ) :
    (Flow.fromIter (α:=α) hg) n = g^[n] := by
  sorry
