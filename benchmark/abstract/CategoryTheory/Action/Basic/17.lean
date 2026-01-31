import Mathlib

open CategoryTheory

lemma Action.comp_ρAut {V : Type*} [Category V]
    {G : Type*} [Group G] (A : Action V G) (g h : G) :
    (A.ρAut (g * h)).hom = (A.ρAut g).hom ≫ (A.ρAut h).hom := by
  sorry