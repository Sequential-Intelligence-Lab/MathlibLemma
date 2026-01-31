import Mathlib

open CategoryTheory

lemma Action.Hom.comm_apply
    {V : Type _} [Category V]
    {G : Type _} [Monoid G]
    {M N : Action V G} (f : M ⟶ N) (g : G) :
    M.ρ g ≫ f.hom = f.hom ≫ N.ρ g := by
  sorry