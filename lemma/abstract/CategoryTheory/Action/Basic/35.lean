import Mathlib

open CategoryTheory

lemma Action.iso_of_hom_iso
    {V : Type*} [Category V] {G : Type*} [Monoid G]
    {M N : Action V G} (f : M.V ≅ N.V)
    (h : ∀ g, M.ρ g ≫ f.hom = f.hom ≫ N.ρ g) :
    Nonempty (M ≅ N) := by
  -- Build the morphism of actions M ⟶ N from f.hom and the equivariance h.
  let homMN : M ⟶ N :=
  { hom := f.hom,
    comm := h }

  -- Show that f.inv is also equivariant, giving a morphism N ⟶ M.
  have inv_comm : ∀ g, N.ρ g ≫ f.inv = f.inv ≫ M.ρ g := by
    intro g
    -- Start from the given equivariance for f.hom.
    -- M.ρ g ≫ f.hom = f.hom ≫ N.ρ g
    -- Post-compose both sides with f.inv.
    have h1 := congrArg (fun k => k ≫ f.inv) (h g)
    -- Simplify using associativity and iso identities.
    -- This yields: M.ρ g = f.hom ≫ N.ρ g ≫ f.inv
    simp [Category.assoc] at h1
    -- Pre-compose with f.inv.
    have h2 := congrArg (fun k => f.inv ≫ k) h1
    -- Simplify again: f.inv ≫ M.ρ g = N.ρ g ≫ f.inv
    simp [Category.assoc] at h2
    -- Reorient to get the desired form.
    simpa using h2.symm

  let homNM : N ⟶ M :=
  { hom := f.inv,
    comm := inv_comm }

  -- Assemble into an isomorphism in Action V G.
  refine ⟨
    { hom := homMN,
      inv := homNM,
      hom_inv_id := ?_,
      inv_hom_id := ?_ }⟩
  · -- hom ≫ inv = 𝟙 M
    ext
    simp [homMN, homNM]
  · -- inv ≫ hom = 𝟙 N
    ext
    simp [homMN, homNM]