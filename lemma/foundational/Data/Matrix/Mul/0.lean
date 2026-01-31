import Mathlib

lemma dotProduct_eq_zero_of_forall_ne [Fintype m] [NonUnitalNonAssocSemiring α]
    (v w : m → α) (h : ∀ i, v i = 0 ∨ w i = 0) :
    v ⬝ᵥ w = 0 := by
  classical
  -- For every index, the product v i * w i is zero
  have hw : ∀ i, v i * w i = 0 := by
    intro i
    rcases h i with hi | hi
    · simp [hi]
    · simp [hi]
  -- Use the definition of dotProduct as a sum over the index type
  simpa [dotProduct, hw]