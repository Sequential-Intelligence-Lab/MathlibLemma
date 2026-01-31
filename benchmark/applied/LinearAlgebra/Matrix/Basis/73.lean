import Mathlib

universe u v w

lemma Basis_toMatrixEquiv_left_inv
  {ι : Type u} {R : Type v} {M : Type w}
  [Semiring R]
  [AddCommMonoid M] [Module R M] [Fintype ι] :
  ∃ (f : (ι → R) →ₗ[R] M) (g : M →ₗ[R] (ι → R)),
    Function.LeftInverse g f := by
  sorry