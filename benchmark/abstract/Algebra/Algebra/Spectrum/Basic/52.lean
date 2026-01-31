import Mathlib

lemma resolventSet.eq_empty_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (a : A) :
    resolventSet R a = ∅ ↔ ∀ r : R, ¬ IsUnit (algebraMap R A r - a) := by
  sorry
