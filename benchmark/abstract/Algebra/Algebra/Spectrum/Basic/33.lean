import Mathlib

lemma resolventSet.eq_of_spectrum_eq
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    {a b : A}
    (h : spectrum R a = spectrum R b) :
    resolventSet R a = resolventSet R b := by
  sorry
