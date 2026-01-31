import Mathlib

lemma spectrum.eq_singleton_of_isNilpotent
    {R A : Type*} [Field R] [Ring A] [Algebra R A]
    (a : A) (ha : IsNilpotent a) :
    spectrum R a = {0} := by
  sorry
