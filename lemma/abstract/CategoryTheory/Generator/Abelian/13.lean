import Mathlib

open CategoryTheory
open CategoryTheory.Limits

/-- In a category with coproducts, projective objects are closed under coproducts. -/
lemma projective_sigma
  {C : Type*} [Category C] [HasCoproducts C]
  {ι : Type*} (X : ι → C) (hX : ∀ i, Projective (X i)) :
  Projective (∐ X) := by
  classical
  -- We construct the `Projective` structure explicitly.
  refine ⟨?_⟩
  intro E Y f g hg
  -- For each component `X i`, use projectivity of `X i` to factor
  -- `Sigma.ι X i ≫ f` through the epi `g`.
  have hfac : ∀ i, ∃ f' : X i ⟶ E, f' ≫ g = Limits.Sigma.ι X i ≫ f :=
    fun i => (hX i).factors (Limits.Sigma.ι X i ≫ f) g
  -- Extract a choice of morphisms `h i : X i ⟶ E` and proofs `hh i`.
  choose h hh using hfac
  -- Define the mediating morphism from the coproduct using the universal property.
  refine ⟨Limits.Sigma.desc h, ?_⟩
  -- Show that this morphism composed with `g` is equal to `f`.
  -- It suffices to check after precomposing with each coproduct inclusion.
  ext i
  -- Simplify using the coproduct API and the chosen factorisations.
  simp [Category.assoc, hh i]