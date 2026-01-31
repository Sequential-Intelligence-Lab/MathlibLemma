import Mathlib

lemma spectrum.disjoint_resolventSet
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    (a : A) :
    Disjoint (spectrum R a) (resolventSet R a) := by
  sorry
