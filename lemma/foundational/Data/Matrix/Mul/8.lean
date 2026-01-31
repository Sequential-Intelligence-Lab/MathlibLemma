import Mathlib

lemma dotProduct_mul_left [Fintype m] [Semiring α]
    (a : α) (v w : m → α) :
    (fun i => a * v i) ⬝ᵥ w = a * (v ⬝ᵥ w) := by
  classical
  -- Unfold dotProduct and pull `a` out of the sum
  -- `(fun i => a * v i) ⬝ᵥ w = ∑ i, (a * v i) * w i`
  -- `v ⬝ᵥ w = ∑ i, v i * w i`
  -- Then use associativity and `Finset.mul_sum`.
  simp [dotProduct, Finset.mul_sum, mul_left_comm, mul_assoc]