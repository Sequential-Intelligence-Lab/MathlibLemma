import Mathlib

open Submodule

lemma LinearMap.trace_map_submodule_quotient
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M]
    (p : Submodule R M)
    [Module.Free R M] [Module.Finite R M]
    [Module.Free R p] [Module.Finite R p]
    (f : M →ₗ[R] M) (hf : ∀ x ∈ p, f x ∈ p)
    [Module.Free R (M ⧸ p)] [Module.Finite R (M ⧸ p)]
    -- We assume the induced maps instead of trying to build them here
    (f_restrict : p →ₗ[R] p)
    (f_quot    : M ⧸ p →ₗ[R] M ⧸ p) :
    LinearMap.trace R M f =
      LinearMap.trace R p f_restrict +
        LinearMap.trace R (M ⧸ p) f_quot := by
  sorry