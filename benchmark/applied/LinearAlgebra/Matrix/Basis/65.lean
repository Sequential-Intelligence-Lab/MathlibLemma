import Mathlib

lemma Basis.toMatrixEquiv_apply_piBasisFun
  {ι : Type*} {R : Type*} [CommSemiring R]
  [DecidableEq ι] [Fintype ι] :
  (Pi.basisFun R ι).toMatrixEquiv (fun i ↦ (Pi.basisFun R ι) i) = 1 := by
  sorry