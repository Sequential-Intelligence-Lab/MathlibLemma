import Mathlib

lemma spectrum.sub_mem_sub_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (a : A) (r s : R) :
    r - s ∈ spectrum R (a - algebraMap R A s) ↔ r ∈ spectrum R a := by
  sorry
