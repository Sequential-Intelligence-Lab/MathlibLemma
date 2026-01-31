import Mathlib

lemma resolventSet.nonempty_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A] :
    ∀ a : A, (resolventSet R a).Nonempty ↔ spectrum R a ≠ Set.univ := by
  intro a; sorry
