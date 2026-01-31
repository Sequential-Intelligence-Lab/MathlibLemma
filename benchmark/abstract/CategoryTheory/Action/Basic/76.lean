import Mathlib

open CategoryTheory

lemma Functor.mapActionComp_naturality
    {V W T : Type*} [Category V] [Category W] [Category T]
    (G : Type*) [Monoid G]
    (F : V ⥤ W) (F' : W ⥤ T)
    (M N : Action V G) (φ : M ⟶ N) :
    ((Functor.mapActionComp (G := G) F F').hom.app M) ≫
        ((F.mapAction G ⋙ F'.mapAction G).map φ) =
      ((F ⋙ F').mapAction G).map φ ≫
        ((Functor.mapActionComp (G := G) F F').hom.app N) := by
  sorry