import Mathlib

lemma resolventSet.eq_empty_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (a : A) :
    resolventSet R a = ∅ ↔ ∀ r : R, ¬ IsUnit (algebraMap R A r - a) := by
  -- By definition, `r ∈ resolventSet R a` means `IsUnit (algebraMap R A r - a)`.
  -- Using `Set.eq_empty_iff_forall_not_mem`, we get the desired statement.
  simp [resolventSet, Set.eq_empty_iff_forall_notMem]
