import Mathlib

lemma resolventSet.nonempty_of_closed_spectrum
    {R A : Type*} [TopologicalSpace R]
    [CommRing R] [Ring A] [Algebra R A]
    (a : A) (hclosed : IsClosed (spectrum R a)) :
    (resolventSet R a).Nonempty ∨ spectrum R a = Set.univ := by
  sorry
