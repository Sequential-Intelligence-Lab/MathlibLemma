import Mathlib

universe u

open CategoryTheory

lemma Action.Hom.comp_comm
    {V : Type u} [Category.{u} V] {G : Type u} [Monoid G]
    {M N K : Action V G} (f : M ⟶ N) (g : N ⟶ K) (x : G) :
    M.ρ x ≫ (f ≫ g).hom = (f ≫ g).hom ≫ K.ρ x := by
  -- Unfold the hom of the composite (definitionally `f.hom ≫ g.hom`)
  change M.ρ x ≫ (f.hom ≫ g.hom) = (f.hom ≫ g.hom) ≫ K.ρ x
  calc
    M.ρ x ≫ (f.hom ≫ g.hom)
        = (M.ρ x ≫ f.hom) ≫ g.hom := by simp [Category.assoc]
    _   = (f.hom ≫ N.ρ x) ≫ g.hom := by
            simpa [f.comm x]
    _   = f.hom ≫ (N.ρ x ≫ g.hom) := by simp [Category.assoc]
    _   = f.hom ≫ (g.hom ≫ K.ρ x) := by
            simpa [g.comm x, Category.assoc]
    _   = (f.hom ≫ g.hom) ≫ K.ρ x := by simp [Category.assoc]