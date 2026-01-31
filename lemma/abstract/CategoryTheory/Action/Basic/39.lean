import Mathlib

universe u v

open CategoryTheory

lemma Action.functorCategoryEquivalence_unitIso_hom_app_V
    {V : Type u} [Category.{v} V] {G : Type v} [Monoid G]
    (M : Action V G) :
    ((Action.functorCategoryEquivalence (V := V) (G := G)).unitIso.app M).hom.hom =
      𝟙 M.V := by
  -- The unit of the equivalence is the identity on the underlying object,
  -- and this is exposed by existing simp lemmas.
  simpa using
    ((Action.functorCategoryEquivalence (V := V) (G := G)).unitIso.app M).hom.hom