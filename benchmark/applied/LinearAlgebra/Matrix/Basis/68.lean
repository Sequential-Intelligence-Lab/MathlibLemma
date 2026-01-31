import Mathlib

universe u v w

variable {ι : Type u} {R : Type v} {M : Type w}

/-- A generic version of the intended lemma, phrased for an arbitrary
linear equivalence `(ι → M) ≃ₗ[R] (ι → R)`. We do not prove it. -/
lemma toMatrixEquiv_neg
  [Ring R] [AddCommGroup M] [Module R M]
  [Module R R]
  (toMatrixEquiv : (ι → M) ≃ₗ[R] (ι → R))
  (v : ι → M) :
  toMatrixEquiv (fun i ↦ - v i) =
    - toMatrixEquiv v := by
  sorry