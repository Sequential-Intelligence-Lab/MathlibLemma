import Mathlib

lemma spectrum.subset_preimage_of_alg_hom
    {R A B : Type*} [CommSemiring R] [Ring A] [Ring B]
    [Algebra R A] [Algebra R B]
    (f : A →ₐ[R] B) (a : A) :
    spectrum R (f a) ⊆ spectrum R a := by
  sorry
