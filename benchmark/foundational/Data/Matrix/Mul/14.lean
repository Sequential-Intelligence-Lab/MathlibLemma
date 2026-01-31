import Mathlib

lemma dotProduct_congr_right [Fintype m] [NonUnitalNonAssocSemiring α]
    {v w w' : m → α}
    (hw : ∀ i, w i = w' i) :
    v ⬝ᵥ w = v ⬝ᵥ w' := by
  sorry
