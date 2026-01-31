import Mathlib

open Matrix

universe u v w

lemma Basis.toMatrix_invertible_det_ne_zero
  {ι : Type u} {R : Type v} {M : Type w}
  [CommRing R] [AddCommGroup M] [Module R M]
  [Fintype ι] [DecidableEq ι]
  (b b' : Module.Basis ι R M) :
  Matrix.det (b.toMatrix b') ≠ (0 : R) := by
  sorry