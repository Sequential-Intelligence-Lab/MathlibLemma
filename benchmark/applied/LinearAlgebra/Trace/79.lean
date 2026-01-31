import Mathlib

lemma LinearMap.trace_real_adjoint_eq_trace
    {M : Type*} [NormedAddCommGroup M] [InnerProductSpace ℝ M]
    [FiniteDimensional ℝ M]
    (f : M →ₗ[ℝ] M) :
    LinearMap.trace ℝ M f.adjoint = LinearMap.trace ℝ M f := by
  sorry
