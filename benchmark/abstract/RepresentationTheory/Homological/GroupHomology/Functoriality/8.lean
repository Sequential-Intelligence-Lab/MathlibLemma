import Mathlib

universe u

lemma groupHomology.chainsMap_zero_right
    {k G : Type u} [CommRing k] [Group G]
    (A B : Rep k G) :
    groupHomology.chainsMap (MonoidHom.id G) (0 : A ⟶ B) = 0 := by
  sorry