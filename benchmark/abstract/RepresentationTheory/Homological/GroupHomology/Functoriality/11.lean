import Mathlib

universe u

lemma groupHomology.chainsMap_smul_hom
    {k G H : Type u} [CommRing k] [Group G] [Group H]
    {A : Rep k G} {B : Rep k H}
    (r : k) (f : G →* H) (φ : A ⟶ (Action.res _ f).obj B) :
    groupHomology.chainsMap f (r • φ) =
      r • groupHomology.chainsMap f φ := by
  sorry