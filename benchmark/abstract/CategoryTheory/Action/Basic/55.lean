import Mathlib

open CategoryTheory

lemma Action_forget_obj_ρ
    {V : Type*} [Category V]
    {G : Type*} [Monoid G]
    (M : Action V G) :
    (Action.forget (V := V) (G := G)).obj M = M.V := by
  sorry