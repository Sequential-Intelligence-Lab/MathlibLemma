import Mathlib

lemma dotProduct_update_eq_right
    [Fintype m] [DecidableEq m]
    [NonUnitalNonAssocSemiring α] [Sub α]
    (v w : m → α) (i : m) (a : α) :
    v ⬝ᵥ (Function.update w i a)
      = v ⬝ᵥ w + v i * (a - w i) := by
  sorry