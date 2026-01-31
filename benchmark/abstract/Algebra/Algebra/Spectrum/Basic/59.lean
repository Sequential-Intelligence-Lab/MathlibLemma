import Mathlib

lemma spectrum.neg_mem_neg_iff'
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (a : A) (r : R) :
    -r ∈ spectrum R (-a) ↔ r ∈ spectrum R a := by
  sorry
