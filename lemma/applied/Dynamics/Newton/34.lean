import Mathlib

/-- The Newton map for the characteristic polynomial of a linear map
commutes with conjugation by linear equivalences.

This is only a *statement* with `by sorry`; it is not proved. -/
lemma LinearEquiv.conj_newtonMap_charpoly
    {K V W : Type*}
    [Field K]
    [AddCommGroup V] [Module K V] [FiniteDimensional K V]
    [AddCommGroup W] [Module K W] [FiniteDimensional K W]
    (f : V →ₗ[K] V) (e : V ≃ₗ[K] W) :
    (LinearMap.charpoly f).aeval
        (e.toLinearMap ∘ₗ (f ∘ₗ e.symm.toLinearMap)) =
      e.toLinearMap ∘ₗ ((LinearMap.charpoly f).aeval f) ∘ₗ e.symm.toLinearMap := by
  -- 1. Identify the characteristic polynomial of the conjugated map.
  have hchar :
      LinearMap.charpoly
        (e.toLinearMap ∘ₗ (f ∘ₗ e.symm.toLinearMap)) =
        LinearMap.charpoly f := by
    -- `LinearEquiv.charpoly_conj` tells us `charpoly (e.conj f) = charpoly f`.
    -- We rewrite `e.conj f` to the explicit composition form.
    simpa [LinearEquiv.conj, LinearMap.comp_assoc] using
      (LinearEquiv.charpoly_conj (e) (f))

  -- 2. Apply Cayley–Hamilton to the conjugated map and rewrite the charpoly.
  have hLHS :
      (LinearMap.charpoly f).aeval
          (e.toLinearMap ∘ₗ (f ∘ₗ e.symm.toLinearMap)) = 0 := by
    -- Cayley–Hamilton for the conjugated map:
    have h :=
      LinearMap.aeval_self_charpoly
        (e.toLinearMap ∘ₗ (f ∘ₗ e.symm.toLinearMap))
    -- Rewrite the characteristic polynomial using `hchar`.
    simpa [hchar] using h

  -- 3. Apply Cayley–Hamilton to `f` and conjugate that equality.
  have hRHS :
      e.toLinearMap ∘ₗ ((LinearMap.charpoly f).aeval f) ∘ₗ e.symm.toLinearMap = 0 := by
    -- Cayley–Hamilton for `f`:
    have h := LinearMap.aeval_self_charpoly f
    -- Conjugate the equality by `e`:
    -- This maps `g ↦ e ∘ g ∘ e⁻¹`.
    simpa [LinearEquiv.conj, LinearMap.comp_assoc] using
      congrArg
        (fun g : V →ₗ[K] V => e.toLinearMap ∘ₗ g ∘ₗ e.symm.toLinearMap)
        h

  -- 4. Both sides are zero, hence equal.
  calc
    (LinearMap.charpoly f).aeval
        (e.toLinearMap ∘ₗ (f ∘ₗ e.symm.toLinearMap))
        = 0 := hLHS
    _ = e.toLinearMap ∘ₗ ((LinearMap.charpoly f).aeval f) ∘ₗ e.symm.toLinearMap := by
          simpa [hRHS]