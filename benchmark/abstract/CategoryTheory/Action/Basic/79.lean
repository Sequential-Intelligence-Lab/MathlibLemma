import Mathlib

open CategoryTheory

lemma Equivalence.mapAction_functor_full
    (V W : Type*) (G : Type*) [Category V] [Category W] [Monoid G]
    (E : V ≌ W) :
    (Equivalence.mapAction (V := V) (W := W) G E).functor.Full := by
  sorry