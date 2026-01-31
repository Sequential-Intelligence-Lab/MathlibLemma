import Mathlib

lemma LinearMap.trace_mulBlockDiagonal_comm
    {R : Type*} [CommRing R]
    {m : Type*} [Fintype m] [DecidableEq m]
    (A B C D : Matrix m m R) :
    (Matrix.blockDiagonal ![A, C] * Matrix.blockDiagonal ![B, D]).trace =
      (Matrix.blockDiagonal ![B, D] * Matrix.blockDiagonal ![A, C]).trace := by
  sorry