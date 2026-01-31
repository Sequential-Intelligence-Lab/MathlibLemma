import Mathlib

lemma LinearMap.trace_blockMatrix_upperTriangular
    {R : Type*} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n] [LT n]
    (U N : Matrix n n R)
    (hN : (∀ i j, i < j → N i j = 0) ∧ (∀ i, N i i = 0)) :
    (U + N).trace = U.trace := by
  sorry