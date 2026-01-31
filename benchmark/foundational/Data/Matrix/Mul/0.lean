import Mathlib

lemma dotProduct_eq_zero_of_forall_ne [Fintype m] [NonUnitalNonAssocSemiring α]
    (v w : m → α) (h : ∀ i, v i = 0 ∨ w i = 0) :
    v ⬝ᵥ w = 0 := by
  sorry
