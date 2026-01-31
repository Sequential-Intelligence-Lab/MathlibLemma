import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.fromIter_orbit_eq {α} [TopologicalSpace α]
    (g : α → α) (hg : Continuous g) (x : α) :
    (Flow.orbit (Flow.fromIter (α:=α) hg) x) = {y | ∃ n, g^[n] x = y} := by
  sorry
