import Mathlib

universe u

open CategoryTheory

lemma Action.Hom.comp_comm
    {V : Type u} [Category.{u} V] {G : Type u} [Monoid G]
    {M N K : Action V G} (f : M ⟶ N) (g : N ⟶ K) (x : G) :
    M.ρ x ≫ (f ≫ g).hom = (f ≫ g).hom ≫ K.ρ x := by
  sorry