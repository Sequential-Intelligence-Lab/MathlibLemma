import Mathlib

universe u v w

open scoped BigOperators

variable {ι : Type u} {R : Type v} {M : Type w}

/-- A corrected lemma about determinants of a matrix corresponding to
a diagonal action by units. This uses the diagonal matrix whose diagonal
entries are the given units. -/
lemma Basis_toMatrixUnitsSMul_det
  [CommRing R] [DecidableEq ι] [Fintype ι]
  (w : ι → Rˣ) :
  Matrix.det (Matrix.diagonal fun i => (w i : R)) = ∏ i, (w i : R) := by
  -- This is exactly `Matrix.det_diagonal` with `v i = (w i : R)`.
  simpa using (Matrix.det_diagonal (fun i => (w i : R)))