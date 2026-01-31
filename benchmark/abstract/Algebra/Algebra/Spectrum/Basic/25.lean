import Mathlib

lemma spectrum.image_isUnit_sub_eq_empty
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (a : A) (r : R) (h : IsUnit (algebraMap R A r - a)) :
    spectrum R a ∩ {r} = ∅ := by
  sorry
