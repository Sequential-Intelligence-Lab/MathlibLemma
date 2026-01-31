import Mathlib

lemma dotProduct_congr_left [Fintype m] [NonUnitalNonAssocSemiring α]
    {v v' w : m → α}
    (hv : ∀ i, v i = v' i) :
    v ⬝ᵥ w = v' ⬝ᵥ w := by
  sorry
