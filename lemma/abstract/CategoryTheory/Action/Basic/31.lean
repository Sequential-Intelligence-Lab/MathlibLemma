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
  -- Give a name to the constructed isomorphism of actions
  set I := Action.mkIso (G := G) f comm
  -- Unfold I so that the underlying morphisms are f.hom and f.inv,
  -- then use the usual isomorphism identity in V.
  -- After rewriting, the goal becomes: f.hom ≫ f.inv = 𝟙 M.V
  -- which is exactly f.hom_inv_id.
  simpa [I] using f.hom_inv_id