import Mathlib

lemma LinearMap.trace_id_eq_dim
    {K : Type*} [Field K]
    {V : Type*} [AddCommGroup V] [Module K V] [FiniteDimensional K V]
    (n : ℕ) :
    LinearMap.trace K V (LinearMap.id : V →ₗ[K] V) = (n : K) := by
  sorry