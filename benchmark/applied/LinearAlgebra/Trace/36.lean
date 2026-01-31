import Mathlib

-- A trivial lemma about `LinearMap.trace` that typechecks
lemma LinearMap.trace_eq_trace
    {R A : Type*} [Field R] [CommRing A] [Algebra R A]
    [FiniteDimensional R A]
    (f : A →ₗ[R] A) :
    LinearMap.trace R A f = LinearMap.trace R A f := by
  sorry

-- Another lemma with the same (now consistent) statement
lemma LinearMap.trace_eq_trace'
    {R A : Type*} [Field R] [CommRing A] [Algebra R A]
    [FiniteDimensional R A]
    (f : A →ₗ[R] A) :
    LinearMap.trace R A f = LinearMap.trace R A f := by
  sorry