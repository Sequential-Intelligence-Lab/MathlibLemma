import Mathlib

lemma spectrum.eq_of_eq_on_resolventSet
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    {a b : A}
    (h : ∀ r : R, r ∈ resolventSet R a ↔ r ∈ resolventSet R b) :
    spectrum R a = spectrum R b := by
  sorry
