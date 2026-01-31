import Mathlib

lemma LinearMap.trace_diagMatrix
    {R : Type*} [CommRing R]
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (d : ι → R) :
    (Matrix.diagonal d).trace = ∑ i, d i := by
  sorry
