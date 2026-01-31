import Mathlib

lemma dotProduct_congr_right [Fintype m] [NonUnitalNonAssocSemiring α]
    {v w w' : m → α}
    (hw : ∀ i, w i = w' i) :
    v ⬝ᵥ w = v ⬝ᵥ w' := by
  classical
  -- Unfold the definition of the dot product
  unfold dotProduct
  -- Show the sums are equal by congruence on each summand
  apply Finset.sum_congr rfl
  intro i hi
  -- Use pointwise equality of w and w' to rewrite
  simpa [hw i]