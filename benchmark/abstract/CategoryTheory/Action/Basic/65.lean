import Mathlib

open CategoryTheory

lemma Action.resId_naturality
    {V : Type*} [Category V]
    {G : Type*} [Monoid G] (M N : Action V G) (f : M ⟶ N) :
    (Action.resId (V := V) (G := G)).hom.app M ≫ f =
      (Action.res (V := V) (G := G) (MonoidHom.id G)).map f ≫
        (Action.resId (V := V) (G := G)).hom.app N := by
  sorry