import Mathlib

open CategoryTheory
open AlgebraicTopology

lemma groupHomology_chainsFunctor_map_comp
    {k G : Type _} [CommRing k] [Group G]
    {A B C : Rep k G} (f : A ⟶ B) (g : B ⟶ C) :
    (groupHomology.chainsFunctor k G).map (f ≫ g) =
      (groupHomology.chainsFunctor k G).map f ≫
        (groupHomology.chainsFunctor k G).map g := by
  sorry