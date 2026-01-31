import Mathlib

lemma LinearMap.trace_mul_scalarMatrix
    {R : Type*} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (r : R) :
    ((r • (1 : Matrix n n R))).trace = (Fintype.card n : R) * r := by
  sorry
