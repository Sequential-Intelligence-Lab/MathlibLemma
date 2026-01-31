import Mathlib

lemma spectrum.nonempty_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A] :
    ∀ a : A, (spectrum R a).Nonempty ↔ resolventSet R a ≠ Set.univ := by
  intro a; sorry
