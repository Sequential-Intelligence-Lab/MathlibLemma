import Mathlib

-- Concerning mkIso and isomorphisms

open CategoryTheory

lemma Action.mkIso_hom_comp_inv_hom
    {V : Type*} [Category V] {G : Type*} [Monoid G]
    {M N : Action V G} (f : M.V ≅ N.V)
    (comm : ∀ g : G, M.ρ g ≫ f.hom = f.hom ≫ N.ρ g) :
    (Action.mkIso (G := G) f comm).hom.hom ≫
      (Action.mkIso (G := G) f comm).inv.hom =
      𝟙 M.V := by
  sorry