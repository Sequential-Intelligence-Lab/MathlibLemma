import Mathlib

-- Dummy predicates so the lemma statement typechecks
def LinearMap.IsSemisimple {R : Type*} {M : Type*}
    [Semiring R] [AddCommMonoid M] [Module R M]
    (f : M →ₗ[R] M) : Prop := True

def LinearMap.IsNilpotent {R : Type*} {M : Type*}
    [Semiring R] [AddCommMonoid M] [Module R M]
    (f : M →ₗ[R] M) : Prop := True

open scoped BigOperators

lemma LinearMap.trace_semisimple_decomposition
    {R : Type*} [Field R]
    {M : Type*} [AddCommGroup M] [Module R M] [FiniteDimensional R M]
    (f s n : M →ₗ[R] M)
    (hsn : f = s + n)
    (hs : LinearMap.IsSemisimple s)
    (hn : LinearMap.IsNilpotent n)
    (hcomm : s * n = n * s) :
    LinearMap.trace R M f = LinearMap.trace R M s := by
  sorry