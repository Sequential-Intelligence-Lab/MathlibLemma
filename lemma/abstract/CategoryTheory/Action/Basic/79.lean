import Mathlib

open CategoryTheory

lemma Equivalence.mapAction_functor_full
    (V W : Type*) (G : Type*) [Category V] [Category W] [Monoid G]
    (E : V ≌ W) :
    (Equivalence.mapAction (V := V) (W := W) G E).functor.Full := by
  -- Make the goal explicitly a `Functor.Full`-typeclass goal:
  change Functor.Full (Equivalence.mapAction (V := V) (W := W) G E).functor
  -- Use the general instance that the functor of an equivalence is full:
  infer_instance