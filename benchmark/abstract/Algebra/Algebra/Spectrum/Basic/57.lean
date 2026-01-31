import Mathlib

lemma spectrum.add_mem_add_iff'
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (a : A) (r s : R) :
    r + s ∈ spectrum R (algebraMap R A s + a) ↔ r ∈ spectrum R a := by
  sorry
