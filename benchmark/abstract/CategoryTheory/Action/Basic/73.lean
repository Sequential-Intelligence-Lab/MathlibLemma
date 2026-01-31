import Mathlib

open CategoryTheory

lemma Functor.mapAction_map_hom
    {V W : Type*} [Category V] [Category W] [MonoidalCategory V]
    (F : V ⥤ W) (G : Type*) [Monoid G]
    {M N : Action V G} (f : M ⟶ N) :
    ((F.mapAction G).map f).hom = F.map f.hom := by
  sorry