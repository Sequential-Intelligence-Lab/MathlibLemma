import Mathlib

open CategoryTheory

lemma Action.Hom.comp_injective_right
    {V : Type*} [Category V] {G : Type*} [Monoid G]
    {M N K : Action V G} (f : M ⟶ N)
    (hf : Function.Injective (fun g : N ⟶ K => f.hom ≫ g.hom)) :
    Function.Injective (fun g : N ⟶ K => f ≫ g) := by
  sorry