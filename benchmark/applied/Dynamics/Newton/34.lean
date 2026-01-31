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
  sorry