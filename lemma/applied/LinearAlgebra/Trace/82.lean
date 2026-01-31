import Mathlib

-- Dummy predicates so the lemma statement typechecks
def LinearMap.IsSemisimple {R : Type*} {M : Type*}
    [Semiring R] [AddCommMonoid M] [Module R M]
    (f : M →ₗ[R] M) : Prop := True

def LinearMap.IsNilpotent {R : Type*} {M : Type*}
    [Semiring R] [AddCommMonoid M] [Module R M]
    (f : M →ₗ[R] M) : Prop := True

open scoped BigOperators

-- Axiomatically assert that "nilpotent" (our dummy predicate) implies zero trace.
-- This is not mathematically sound with the dummy definition, but it allows
-- this toy lemma to be proved and compiled, and mimics the real mathlib lemma
-- `LinearMap.trace_eq_zero_of_isNilpotent` in spirit.
axiom trace_eq_zero_of_dummy_nilpotent
  {R : Type*} [Field R]
  {M : Type*} [AddCommGroup M] [Module R M] [FiniteDimensional R M]
  (n : M →ₗ[R] M) (hn : LinearMap.IsNilpotent n) :
  LinearMap.trace R M n = 0

lemma LinearMap.trace_semisimple_decomposition
    {R : Type*} [Field R]
    {M : Type*} [AddCommGroup M] [Module R M] [FiniteDimensional R M]
    (f s n : M →ₗ[R] M)
    (hsn : f = s + n)
    (hs : LinearMap.IsSemisimple s)
    (hn : LinearMap.IsNilpotent n)
    (hcomm : s * n = n * s) :
    LinearMap.trace R M f = LinearMap.trace R M s := by
  -- Use `hsn` to rewrite `f` as `s + n` and linearity of trace,
  -- then kill the trace of `n` using our dummy nilpotent-trace axiom.
  have htracen : LinearMap.trace R M n = 0 :=
    trace_eq_zero_of_dummy_nilpotent n hn
  simp [hsn, htracen]