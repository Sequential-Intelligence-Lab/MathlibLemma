import Mathlib

open CategoryTheory

universe u

@[simp]
lemma Action.actionPunitEquivalence_counitIso_app
    {V : Type u} [Category V] (X : V) :
    ((Action.actionPunitEquivalence (V := V)).counitIso.app X).hom =
      𝟙 X := by
  -- The equivalence `actionPunitEquivalence` is set up so that its counit
  -- isomorphism has identity components; unfolding its definition and simplifying
  -- reduces the morphism to `𝟙 X`.
  simpa [Action.actionPunitEquivalence]