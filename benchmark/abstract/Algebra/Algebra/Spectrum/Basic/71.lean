import Mathlib

lemma spectrum.eq_of_mul_left_cancel
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (u : Aˣ) (a : A) :
    spectrum R (u * a) = spectrum R a := by
  sorry
