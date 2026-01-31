import Mathlib

open CategoryTheory

lemma Action_Hom_comp_injective_left
    {V : Type*} [Category V] {G : Type*} [Monoid G]
    {M N K : Action V G} (g : N ⟶ K)
    (hg : Function.Injective (fun (f : M ⟶ N) => f.hom ≫ g.hom)) :
    Function.Injective (fun (f : M ⟶ N) => f ≫ g) := by
  sorry