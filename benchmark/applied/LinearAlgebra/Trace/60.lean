import Mathlib

-- Use the fully qualified name for the range
axiom Submodule.restrictRange
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M]
    (f : M →ₗ[R] M) (p : Submodule R M) (hp : LinearMap.range f ≤ p) :
    p →ₗ[R] p

lemma LinearMap.trace_range_le
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M]
    (f : M →ₗ[R] M) (p : Submodule R M) (hp : LinearMap.range f ≤ p)
    [Module.Free R p] [Module.Finite R p] :
    LinearMap.trace R p (Submodule.restrictRange f p hp) =
      LinearMap.trace R M f := by
  sorry