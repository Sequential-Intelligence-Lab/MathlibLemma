import Mathlib

open CategoryTheory

lemma Action.forget_faithful
    {V : Type*} [Category V] [MonoidalCategory V]
    {G : Type*} [Monoid G] :
    (Action.forget (V := V) (G := G)).Faithful := by
  sorry