import Mathlib

lemma dotProduct_fin_one [NonUnitalNonAssocSemiring α] (v w : Fin 1 → α) :
    v ⬝ᵥ w = v 0 * w 0 := by
  sorry
