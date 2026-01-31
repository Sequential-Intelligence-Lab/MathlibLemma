import Mathlib

lemma spectrum.finite_of_finiteDimensional
    {R A : Type*} [Field R] [Ring A] [Algebra R A] [FiniteDimensional R A]
    (a : A) :
    (spectrum R a).Finite := by
  sorry
