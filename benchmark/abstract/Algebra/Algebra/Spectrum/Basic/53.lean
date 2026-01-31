import Mathlib

lemma resolventSet.eq_univ_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (a : A) :
    resolventSet R a = Set.univ ↔ spectrum R a = ∅ := by
  sorry
