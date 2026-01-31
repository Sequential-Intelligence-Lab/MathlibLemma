import Mathlib

lemma spectrum.eq_of_isUnit_sub_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    {a b : A}
    (h : ∀ r : R, IsUnit (algebraMap R A r - a) ↔ IsUnit (algebraMap R A r - b)) :
    spectrum R a = spectrum R b := by
  sorry
