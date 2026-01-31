import Mathlib

lemma dotProduct_smul_right' [Fintype m] [Semiring α]
    (a : α) (v w : m → α) :
    v ⬝ᵥ (fun i => a • w i) = a • (v ⬝ᵥ w) := by
  sorry
