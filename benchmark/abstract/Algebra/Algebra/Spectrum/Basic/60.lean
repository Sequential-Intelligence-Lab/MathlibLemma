import Mathlib

lemma spectrum.smul_mem_smul_iff'
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (a : A) (c : R) (hc : IsUnit c) (r : R) :
    c * r ∈ spectrum R (algebraMap R A c * a) ↔ r ∈ spectrum R a := by
  sorry
