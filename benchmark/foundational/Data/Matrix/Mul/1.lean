import Mathlib

lemma dotProduct_eq_sum_mul [Fintype m] [NonUnitalNonAssocSemiring α]
    (v w : m → α) :
    v ⬝ᵥ w = ∑ i, v i * w i := by
  sorry
