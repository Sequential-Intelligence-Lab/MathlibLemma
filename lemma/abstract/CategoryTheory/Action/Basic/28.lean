import Mathlib

universe u v

open CategoryTheory

lemma Action_Hom_comp_eq_iff
    {V : Type u} [Category.{v} V] {G : Type v} [Monoid G]
    {M N K : Action V G} {f₁ f₂ : M ⟶ N} (g : N ⟶ K)
    [IsIso g] :
    f₁ ≫ g = f₂ ≫ g ↔ f₁ = f₂ := by
  constructor
  · intro h
    -- Compose both sides with inv g on the right and simplify
    have := congrArg (fun f => f ≫ inv g) h
    simpa [Category.assoc, IsIso.hom_inv_id] using this
  · intro h
    simpa [h]