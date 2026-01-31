import Mathlib

lemma dotProduct_sub_left [Fintype m] [NonUnitalNonAssocRing α]
    (u v w : m → α) :
    (u - v) ⬝ᵥ w = u ⬝ᵥ w - v ⬝ᵥ w := by
  sorry
