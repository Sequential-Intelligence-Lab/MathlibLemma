import Mathlib

open CategoryTheory

universe u

@[simp]
lemma Action.actionPunitEquivalence_counitIso_app
    {V : Type u} [Category V] (X : V) :
    ((Action.actionPunitEquivalence (V := V)).counitIso.app X).hom =
      𝟙 X := by
  sorry