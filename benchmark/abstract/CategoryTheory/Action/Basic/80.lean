import Mathlib

open CategoryTheory

lemma Equivalence.mapAction_functor_faithful
    {V W G : Type*} [Category V] [Category W] [Monoid G]
    (E : V ≌ W) :
    (Equivalence.mapAction G E).functor.Faithful := by
  sorry