import Mathlib

lemma Basis.toMatrix_basisFun
  {ι : Type*} {R : Type*} [CommSemiring R] [Fintype ι] [DecidableEq ι] :
  (Pi.basisFun R ι).toMatrix (Pi.basisFun R ι) = 1 := by
  sorry