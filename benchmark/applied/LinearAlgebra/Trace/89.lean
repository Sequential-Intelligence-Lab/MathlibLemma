import Mathlib

lemma LinearMap.trace_matrix_conjSimilarity
    {R : Type*} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (P A : Matrix n n R) (hP : IsUnit P.det) :
    (P * A * P⁻¹).trace = A.trace := by
  sorry
