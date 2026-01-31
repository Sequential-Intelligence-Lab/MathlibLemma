import Mathlib

lemma spectrum.image_algEquiv_eq
    {R A B : Type*} [CommSemiring R] [Ring A] [Ring B]
    [Algebra R A] [Algebra R B]
    (e : A ≃ₐ[R] B) (a : A) :
    spectrum R (e a) = spectrum R a := by
  sorry
