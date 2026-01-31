import Mathlib

lemma LinearMap.trace_endMul_left
    {R : Type*} [Field R]
    {A : Type*} [CommRing A] [Algebra R A]
    [FiniteDimensional R A]
    (a : A) :
    LinearMap.trace R A (Algebra.lmul R A a) =
      Algebra.trace R A a := by
  sorry