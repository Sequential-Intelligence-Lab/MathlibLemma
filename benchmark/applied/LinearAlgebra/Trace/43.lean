import Mathlib

lemma LinearMap.trace_blockId
    {R : Type*} [CommRing R]
    {m n : ℕ} :
    Matrix.trace (1 : Matrix (Fin (m + n)) (Fin (m + n)) R) =
      (m + n : R) := by
  sorry