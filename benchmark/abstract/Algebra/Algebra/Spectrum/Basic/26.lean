import Mathlib

lemma spectrum.isClosed_of_compact_resolventSet
    {R A : Type*} [TopologicalSpace R] [T1Space R]
    [CommSemiring R] [Ring A] [Algebra R A]
    (a : A) (h : IsClosed (resolventSet R a)) :
    IsOpen (spectrum R a) := by
  sorry
