import Mathlib

universe u v

open CategoryTheory

lemma Action.resEquiv_faithful
    {V : Type u} [Category.{v} V] [MonoidalCategory V]
    {G H : Type v} [Monoid G] [Monoid H]
    (e : G ≃* H) :
    (Action.resEquiv (V := V) (G := G) (H := H) e).functor.Faithful := by
  sorry