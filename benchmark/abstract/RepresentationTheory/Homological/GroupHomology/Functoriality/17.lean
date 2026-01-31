import Mathlib

universe u

lemma groupHomology.cyclesMap_zero_hom
    {k : Type u} [CommRing k]
    {G : Type u} [Group G]
    {H : Type u} [Group H]
    {A : Rep k G} {B : Rep k H}
    (f : G →* H) (n : ℕ) :
    groupHomology.cyclesMap f (0 : A ⟶ (Action.res _ f).obj B) n = 0 := by
  sorry