import Mathlib

lemma dotProduct_sub_right [Fintype m] [NonUnitalNonAssocRing α]
    (u v w : m → α) :
    u ⬝ᵥ (v - w) = u ⬝ᵥ v - u ⬝ᵥ w := by
  sorry
