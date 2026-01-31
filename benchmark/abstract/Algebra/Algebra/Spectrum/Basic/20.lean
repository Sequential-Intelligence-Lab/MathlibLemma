import Mathlib

lemma spectrum.union_resolventSet_univ
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    (a : A) :
    spectrum R a ∪ resolventSet R a = Set.univ := by
  sorry
