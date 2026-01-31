import Mathlib

lemma spectrum.eq_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    {a b : A} :
    spectrum R a = spectrum R b ↔
      ∀ r : R, IsUnit (algebraMap R A r - a) ↔ IsUnit (algebraMap R A r - b) := by
  sorry
