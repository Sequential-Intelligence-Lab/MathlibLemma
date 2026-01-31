import Mathlib

lemma dotProduct_stdBasis [Fintype m] [DecidableEq m] [NonAssocSemiring α]
    (i j : m) :
    (Pi.single i 1 : m → α) ⬝ᵥ (Pi.single j 1 : m → α)
      = if i = j then 1 else 0 := by
  sorry
