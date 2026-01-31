import Mathlib

lemma resolventSet.subset_of_spectrum_subset
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    {a b : A}
    (h : spectrum R a ⊆ spectrum R b) :
    resolventSet R b ⊆ resolventSet R a := by
  sorry
