import Mathlib

lemma dotProduct_fin_two [NonUnitalNonAssocSemiring α] (v w : Fin 2 → α) :
    v ⬝ᵥ w = v 0 * w 0 + v 1 * w 1 := by
  sorry
