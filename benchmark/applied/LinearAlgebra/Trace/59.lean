import Mathlib

lemma LinearMap.trace_endAlg_hom_comp
    {R A : Type*} [Field R] [CommRing A] [Algebra R A]
    [FiniteDimensional R A]
    (f : A →ₐ[R] A) :
    LinearMap.trace R A f.toLinearMap =
      Algebra.trace R A (f 1) := by
  sorry