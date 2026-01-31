import Mathlib

open CategoryTheory

lemma Equivalence.mapAction_functor_preservesColimits
    {V W : Type*} [CategoryTheory.Category V] [CategoryTheory.Category W]
    [CategoryTheory.Limits.HasColimits V] [CategoryTheory.Limits.HasColimits W]
    {G : Type*} [Monoid G] (E : V ≌ W) :
    CategoryTheory.Limits.PreservesColimits
      (CategoryTheory.Equivalence.mapAction (V := V) (W := W) G E).functor := by
  sorry