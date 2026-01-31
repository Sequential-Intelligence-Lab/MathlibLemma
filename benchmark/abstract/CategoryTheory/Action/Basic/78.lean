import Mathlib

universe u v u₁ v₁

open CategoryTheory

lemma Functor.mapAction_preservesIsIso
    {V W : Type u} [Category.{v} V] [Category.{v} W]
    (F : V ⥤ W) (G : Type u₁) [Monoid G]
    {M N : Action V G} (f : M ⟶ N) [IsIso f] :
    IsIso ((CategoryTheory.Functor.mapAction F G).map f) := by
  sorry