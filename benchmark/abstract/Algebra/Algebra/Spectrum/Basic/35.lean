import Mathlib

lemma spectrum.inter_resolventSet_eq_empty
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    (a : A) :
    spectrum R a ∩ resolventSet R a = ∅ := by
  sorry
