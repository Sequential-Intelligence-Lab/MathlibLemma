import Mathlib

lemma spectrum.subset_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    {a b : A} :
    spectrum R a ⊆ spectrum R b ↔
      ∀ r : R, IsUnit (algebraMap R A r - b) → IsUnit (algebraMap R A r - a) := by
  sorry
