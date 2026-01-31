import Mathlib

noncomputable section

lemma trace_leftMul_eq_algebraTrace
    {R A : Type*} [Field R] [CommRing A] [Algebra R A]
    [FiniteDimensional R A]
    (a : A) :
    LinearMap.trace R A (Algebra.lmul R A a) =
      Algebra.trace R A a := by
  -- `Algebra.trace` is defined as the composition
  -- `(LinearMap.trace R A).comp (Algebra.lmul R A)`.
  -- Evaluating at `a` gives exactly the desired equality.
  simpa [Algebra.trace, LinearMap.comp_apply]