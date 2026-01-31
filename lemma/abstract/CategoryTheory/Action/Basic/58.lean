import Mathlib

open CategoryTheory

lemma Action.actionPunitEquivalence_unitIso_app
    {V : Type*} [Category V] (X : Action V PUnit) :
    ((Action.actionPunitEquivalence (V := V)).unitIso.app X).hom.hom =
      𝟙 X.V := by
  -- This follows definitionally from how `actionPunitEquivalence` and its unit
  -- isomorphism are constructed.
  simpa [Action.actionPunitEquivalence]