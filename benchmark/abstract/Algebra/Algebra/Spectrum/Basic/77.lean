import Mathlib

lemma resolventSet.open_of_closed_spectrum
    {R A : Type*} [TopologicalSpace R]
    [CommRing R] [Ring A] [Algebra R A]
    (a : A) (h : IsClosed (spectrum R a)) :
    IsOpen (resolventSet R a) := by
  sorry
