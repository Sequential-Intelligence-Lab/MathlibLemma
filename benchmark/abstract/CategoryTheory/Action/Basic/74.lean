import Mathlib

open CategoryTheory

lemma Functor.mapAction_faithful
    {V W : Type*} [Category V] [Category W]
    (F : V ⥤ W) (G : Type*) [Monoid G]
    [F.Faithful] :
    (F.mapAction G).Faithful := by
  sorry