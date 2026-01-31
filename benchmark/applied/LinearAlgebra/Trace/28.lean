import Mathlib

lemma LinearMap.trace_restrict_top
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M] (f : M →ₗ[R] M) :
    LinearMap.trace R (⊤ : Submodule R M)
        (f.restrict
          (by
            intro x hx
            -- hx : x ∈ (⊤ : Submodule R M), which is always true
            trivial)) =
      LinearMap.trace R M f := by
  sorry