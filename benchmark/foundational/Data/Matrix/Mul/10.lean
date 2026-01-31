import Mathlib

lemma dotProduct_smul_left' [Fintype m] [Semiring α]
    (a : α) (v w : m → α) :
    (fun i => a • v i) ⬝ᵥ w = a • (v ⬝ᵥ w) := by
  sorry
