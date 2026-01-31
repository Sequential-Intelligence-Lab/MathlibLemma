import Mathlib

open CategoryTheory

universe u v

lemma Action.ρ_mul_hom_ext
    {V : Type u} [Category.{v} V]
    {G : Type v} [Monoid G] {A : Action V G}
    {f₁ f₂ : G →* (End A.V)} (h : ∀ g, f₁ g = f₂ g) :
    f₁ = f₂ := by
  sorry