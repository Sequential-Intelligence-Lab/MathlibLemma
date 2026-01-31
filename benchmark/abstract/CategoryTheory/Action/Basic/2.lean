import Mathlib

universe u v

open CategoryTheory

lemma Action.comp_ρ_eq_ρ_comp
    {V : Type u} [Category.{v} V]
    {G H : Type*} [Monoid G] [Monoid H]
    (f : G →* H) (A : Action V H) (g : G) :
    ((Action.res V f).obj A).ρ g = A.ρ (f g) := by
  sorry