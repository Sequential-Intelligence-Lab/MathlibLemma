import Mathlib

lemma dotProduct_congr [Fintype m] [NonUnitalNonAssocSemiring α]
    {v v' w w' : m → α}
    (hv : ∀ i, v i = v' i) (hw : ∀ i, w i = w' i) :
    v ⬝ᵥ w = v' ⬝ᵥ w' := by
  sorry
