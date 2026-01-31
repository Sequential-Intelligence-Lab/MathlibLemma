import Mathlib

lemma spectrum.isClosed_of_proper_resolventSet_open
    {R A : Type*} [TopologicalSpace R] [T1Space R]
    [CommSemiring R] [Ring A] [Algebra R A]
    (a : A) (hopen : IsOpen (resolventSet R a))
    (hproper : resolventSet R a ≠ Set.univ) :
    IsClosed (spectrum R a) := by
  sorry
