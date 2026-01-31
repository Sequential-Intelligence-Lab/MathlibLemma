import Mathlib

lemma dotProduct_pow_self [Fintype n] [Semiring α]
    (v : n → α) (k : ℕ) :
    v ⬝ᵥ (fun i => v i ^ k) = ∑ i, v i * v i ^ k := by
  sorry
