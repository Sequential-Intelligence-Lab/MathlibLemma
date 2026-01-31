import Mathlib

open CategoryTheory
open AlgebraicTopology

lemma groupHomology.map_add_hom
    {k G H} [CommRing k] [Group G] [Group H]
    {A : Rep k G} {B : Rep k H}
    (f : G →* H) (φ ψ : A ⟶ (Action.res _ f).obj B) (n : ℕ) :
    groupHomology.map f (φ + ψ) n =
      groupHomology.map f φ n + groupHomology.map f ψ n := by
  sorry