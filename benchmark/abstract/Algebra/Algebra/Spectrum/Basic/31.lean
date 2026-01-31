import Mathlib

lemma spectrum.le_of_isUnit_sub_le_isUnit_sub
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    {a b : A}
    (h : ∀ r : R, IsUnit (algebraMap R A r - b) → IsUnit (algebraMap R A r - a)) :
    spectrum R a ⊆ spectrum R b := by
  sorry
