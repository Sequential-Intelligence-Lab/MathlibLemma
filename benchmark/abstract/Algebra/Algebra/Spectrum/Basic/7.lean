import Mathlib

lemma spectrum.isClosed_of_isClosed_resolventSet
    {R A : Type*} [TopologicalSpace R] [T1Space R]
    [CommSemiring R] [Ring A] [Algebra R A]
    (a : A)
    (h : IsOpen (resolventSet R a)) :
    IsClosed (spectrum R a) := by
  sorry
