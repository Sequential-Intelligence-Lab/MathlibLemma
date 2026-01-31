import Mathlib

lemma spectrum.subset_image_of_resolventSet_injective
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (a : A) :
    spectrum R a ⊆ (fun r => r) '' spectrum R a := by
  sorry