import Mathlib

open CategoryTheory

universe u

lemma groupHomology.chainsMap_ofComp_eq_comp_chainsMap
    {k : Type u} {G H K : Type u}
    [CommRing k] [Group G] [Group H] [Group K]
    {A : Action (ModuleCat k) G}
    {B : Action (ModuleCat k) H}
    {C : Action (ModuleCat k) K}
    (f : G →* H) (g : H →* K)
    (φ : A ⟶ (Action.res (ModuleCat k) f).obj B)
    (ψ : B ⟶ (Action.res (ModuleCat k) g).obj C)
    (n : ℕ) :
    (groupHomology.chainsMap (g.comp f)
        (φ ≫ (Action.res (ModuleCat k) f).map ψ)).f n =
      ((groupHomology.chainsMap f φ ≫
        groupHomology.chainsMap g ψ).f n) := by
  sorry