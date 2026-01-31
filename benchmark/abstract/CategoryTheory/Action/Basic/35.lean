import Mathlib

open CategoryTheory

lemma Action.iso_of_hom_iso
    {V : Type*} [Category V] {G : Type*} [Monoid G]
    {M N : Action V G} (f : M.V ≅ N.V)
    (h : ∀ g, M.ρ g ≫ f.hom = f.hom ≫ N.ρ g) :
    Nonempty (M ≅ N) := by
  sorry