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
  classical
  -- Let `e` be the canonical equivalence between `⊤` and `M`.
  let e : (⊤ : Submodule R M) ≃ₗ[R] M := Submodule.topEquiv
  -- Show that the restriction of `f` to `⊤` is the conjugate of `f` by `e.symm`.
  have h :
      f.restrict
        (by
          intro x hx
          trivial)
        = e.symm.conj f := by
    -- Both maps send `x : ⊤` to the subtype with underlying value `f x.1`.
    ext x
    rfl
  -- Use invariance of trace under conjugation by a linear equivalence.
  -- `LinearMap.trace_conj` states:
  --   trace R (⊤) (e.symm.conj f) = trace R M f.
  simpa [h, e] using
    (LinearMap.trace_conj (e := e) (f := f))