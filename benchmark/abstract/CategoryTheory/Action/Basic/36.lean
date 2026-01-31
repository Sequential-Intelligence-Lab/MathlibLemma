import Mathlib

open CategoryTheory

lemma Action.iso_iff_hom_iso
    {V : Type*} [Category V] {G : Type*} [Monoid G]
    (M N : Action V G) :
    Nonempty (M ≅ N) ↔
      ∃ f : M.V ≅ N.V,
        ∀ g : G, M.ρ g ≫ f.hom = f.hom ≫ N.ρ g := by
  sorry