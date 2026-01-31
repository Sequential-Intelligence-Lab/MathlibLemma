import Mathlib

lemma LinearMap.trace_mul_commute_pow
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M]
    (f g : M →ₗ[R] M)
    (h : Commute f g) (n : ℕ) :
    LinearMap.trace R M (f * g ^ n) =
      LinearMap.trace R M (g ^ n * f) := by
  sorry
