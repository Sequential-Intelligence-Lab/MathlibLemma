import Mathlib

lemma spectrum.eq_empty_iff_isUnit_subsingleton
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    (a : A) :
    spectrum R a = ∅ ↔ (∀ r : R, IsUnit (algebraMap R A r - a)) := by
  sorry
