import Mathlib

lemma LinearMap.trace_blockMat_eq_sum
    {R : Type*} [CommRing R]
    {m : Type*} [Fintype m] [DecidableEq m]
    (A B : Matrix m m R) :
    (Matrix.blockDiagonal ![A, B]).trace = A.trace + B.trace := by
  sorry