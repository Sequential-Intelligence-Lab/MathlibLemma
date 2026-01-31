import Mathlib

lemma spectrum.subset_singleton_of_isIdempotent
    {R A : Type*} [Field R] [Ring A] [Algebra R A]
    (a : A) (h : a * a = a) :
    spectrum R a ⊆ {0, 1} := by
  sorry
