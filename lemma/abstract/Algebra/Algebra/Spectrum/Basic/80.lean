import Mathlib

lemma spectrum.subset_of_compact_resolventSet
    {R A : Type*} [TopologicalSpace R] [T1Space R]
    [CommRing R] [Ring A] [Algebra R A]
    (a : A) (hcompact : IsCompact (resolventSet R a)) :
    spectrum R a ⊆ closure (spectrum R a) := by
  simpa using
    (subset_closure : spectrum R a ⊆ closure (spectrum R a))