import Mathlib

lemma spectrum.subset_of_mul_commute
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    {a b : A} (h : Commute a b) :
    spectrum R (a * b) ⊆ spectrum R (b * a) := by
  sorry
