import Mathlib

lemma dotProduct_eq_of_sub_eq_zero [Fintype m] [NonUnitalNonAssocRing α]
    (v w : m → α) (h : v - w = 0) :
    v ⬝ᵥ v = v ⬝ᵥ w := by
  sorry
