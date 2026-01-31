import Mathlib

open CategoryTheory

lemma Action.mkIso_inv_hom_comp_hom
    {V : Type*} [Category V] {G : Type*} [Monoid G]
    {M N : Action V G} (f : M.V ≅ N.V)
    (h :
      ∀ (g : G),
        M.ρ g ≫ f.hom = f.hom ≫ N.ρ g) :
    (Action.mkIso (G := G) f h).inv.hom ≫ (Action.mkIso (G := G) f h).hom.hom =
      𝟙 N.V := by
  sorry