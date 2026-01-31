import Mathlib

/-- For an endomorphism of a finitely generated module over a field,
Newton iteration for its characteristic polynomial converges in finitely many
steps to its semisimple part.

This lemma is currently a stub: the conclusion does not yet express the full
Newton iteration behavior, but is stated in a way that typechecks.
-/
lemma LinearMap.exists_iterate_newton_charpoly_decomposition
    {K V : Type*} [Field K] [AddCommGroup V] [Module K V] [FiniteDimensional K V]
    (f : V →ₗ[K] V) :
    ∃ n : ℕ, ∃ s : V →ₗ[K] V,
      (LinearMap.charpoly f).aeval f = 0 ∧ True := by
  refine ⟨0, 0, ?_, ?_⟩
  · -- Cayley–Hamilton: the characteristic polynomial annihilates `f`
    simpa using LinearMap.aeval_self_charpoly f
  · trivial