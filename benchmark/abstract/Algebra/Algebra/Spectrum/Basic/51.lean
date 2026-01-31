import Mathlib

lemma spectrum.eq_univ_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (a : A) :
    spectrum R a = Set.univ ↔ ∀ r : R, ¬ IsUnit (algebraMap R A r - a) := by
  sorry
