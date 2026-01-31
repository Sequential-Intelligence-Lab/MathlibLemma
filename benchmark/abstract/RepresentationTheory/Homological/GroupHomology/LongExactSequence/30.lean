import Mathlib

open scoped ZeroObject
open CategoryTheory

lemma groupHomology.δ_comp_H0_map
    {k G : Type _} [CommRing k] [Group G]
    (X : ShortComplex (Rep k G)) (hX : X.ShortExact) :
    groupHomology.δ hX 1 0 (by decide : 0 + 1 = 1) ≫
      groupHomology.map (MonoidHom.id G) X.f 0 = 0 := by
  sorry