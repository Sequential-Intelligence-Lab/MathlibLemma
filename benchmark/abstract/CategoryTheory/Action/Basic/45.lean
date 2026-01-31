import Mathlib

open CategoryTheory

universe u v w

lemma Action.forget_reflectsIsomorphisms
    {V : Type u} [Category.{v} V]
    {G : Type w} [Monoid G] :
    CategoryTheory.Functor.ReflectsIsomorphisms
      (F := Action.forget (V := V) (G := G)) := by
  sorry