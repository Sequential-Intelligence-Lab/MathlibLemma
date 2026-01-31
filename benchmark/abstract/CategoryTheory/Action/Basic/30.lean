import Mathlib

open CategoryTheory

universe u v

lemma Action.Hom.eq_of_id_comp_eq
    {V : Type u} [Category.{v} V] {G : Type u} [Monoid G]
    {M N : Action V G} {f₁ f₂ : M ⟶ N}
    (h : 𝟙 M ≫ f₁ = 𝟙 M ≫ f₂) :
    f₁ = f₂ := by
  sorry