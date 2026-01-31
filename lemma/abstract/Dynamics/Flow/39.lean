import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.iter_fromIter_eq {α} [TopologicalSpace α]
    (g : α → α) (hg : Continuous g) (n : ℕ) :
    (Flow.fromIter (α:=α) hg) n = g^[n] := by
  -- Equality of functions α → α; use function extensionality.
  funext x
  -- After unfolding `Flow.fromIter`, both sides are definitional equal.
  simpa [Flow.fromIter]