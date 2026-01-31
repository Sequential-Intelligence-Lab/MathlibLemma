import Mathlib

open CategoryTheory

lemma Action.iso_iff_hom_iso
    {V : Type*} [Category V] {G : Type*} [Monoid G]
    (M N : Action V G) :
    Nonempty (M ≅ N) ↔
      ∃ f : M.V ≅ N.V,
        ∀ g : G, M.ρ g ≫ f.hom = f.hom ≫ N.ρ g := by
  constructor
  · intro h
    rcases h with ⟨e⟩
    refine ⟨(Action.forget V G).mapIso e, ?_⟩
    intro g
    -- `e.hom` is a morphism of actions, so it satisfies the commutativity.
    -- The hom of `(Action.forget V G).mapIso e` is exactly `e.hom.hom`.
    simpa using e.hom.comm g
  · rintro ⟨f, hf⟩
    -- Build an isomorphism of actions from an iso of underlying objects
    -- together with the compatibility condition `hf`.
    -- First define the forward morphism of actions.
    let hom : M ⟶ N :=
    { hom := f.hom
      comm := hf }
    -- Now define the backward morphism of actions; we must show the commutativity.
    have invComm : ∀ g : G, N.ρ g ≫ f.inv = f.inv ≫ M.ρ g := by
      intro g
      -- Start from the given compatibility for `f.hom`.
      have hf' := hf g
      -- hf' : M.ρ g ≫ f.hom = f.hom ≫ N.ρ g
      -- Precompose with f.inv.
      have h1 := congrArg (fun k => f.inv ≫ k) hf'
      -- Simplify using associativity and iso identities.
      -- Left:  f.inv ≫ M.ρ g ≫ f.hom
      -- Right: f.inv ≫ f.hom ≫ N.ρ g = 𝟙 _ ≫ N.ρ g = N.ρ g
      simp [Category.assoc] at h1
      -- h1 : (f.inv ≫ M.ρ g) ≫ f.hom = N.ρ g
      -- Postcompose with f.inv.
      have h2 := congrArg (fun k => k ≫ f.inv) h1
      -- Simplify both sides.
      -- Left: f.inv ≫ M.ρ g ≫ f.hom ≫ f.inv = f.inv ≫ M.ρ g
      -- Right: N.ρ g ≫ f.inv
      simp [Category.assoc] at h2
      -- h2 : f.inv ≫ M.ρ g = N.ρ g ≫ f.inv
      -- Our goal is `N.ρ g ≫ f.inv = f.inv ≫ M.ρ g`.
      exact h2.symm
    let inv : N ⟶ M :=
    { hom := f.inv
      comm := invComm }
    -- Assemble the isomorphism in `Action V G`.
    refine ⟨
      { hom := hom
        inv := inv
        hom_inv_id := ?_
        inv_hom_id := ?_ }⟩
    · -- hom ≫ inv = 𝟙 M
      ext
      -- Reduce to the underlying morphisms in `V`.
      simp [hom, inv]
    · -- inv ≫ hom = 𝟙 N
      ext
      simp [hom, inv]