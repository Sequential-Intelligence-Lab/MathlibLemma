import Mathlib

lemma dotProduct_mul_right [Fintype m] [CommSemiring α]
    (a : α) (v w : m → α) :
    v ⬝ᵥ (fun i => a * w i) = a * (v ⬝ᵥ w) := by
  classical
  -- Expand the definition of dot product
  unfold dotProduct
  -- We work with sums over Finset.univ implicitly
  -- Goal: ∑ i, v i * (a * w i) = a * ∑ i, v i * w i
  calc
    ∑ i, v i * (a * w i)
        = ∑ i, a * (v i * w i) := by
          -- Show equality termwise inside the sum
          apply Finset.sum_congr rfl
          intro i hi
          -- v i * (a * w i) = a * (v i * w i) in a commutative semiring
          simp [mul_left_comm, mul_comm, mul_assoc]
    _ = a * ∑ i, v i * w i := by
          -- Factor out a from the sum
          -- Finset.mul_sum: a * ∑ i, v i * w i = ∑ i, a * (v i * w i)
          simpa [Finset.mul_sum] using
            (Finset.mul_sum (s := Finset.univ)
              (a := a) (f := fun i : m => v i * w i)).symm