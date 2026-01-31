import Mathlib

open CategoryTheory

lemma Functor_mapAction_obj_ρ
    {V W : Type*} [Category V] [Category W]
    (F : V ⥤ W) (G : Type*) [Monoid G] (M : Action V G) (g : G) :
    ((F.mapAction G).obj M).ρ g = F.map (M.ρ g) := by
  sorry