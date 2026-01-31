import Mathlib

open CategoryTheory

universe u

/-- Naturality of the isomorphism `H₀ ≅` coinvariants for group homology. -/
lemma groupHomology.H0Iso_naturality
    {k : Type u} [CommRing k]
    {G : Type u} [Group G]
    {A B : Rep k G} (f : A ⟶ B) :
    groupHomology.map (MonoidHom.id G) f 0 ≫
      (groupHomology.H0Iso (k := k) (G := G) B).hom =
      (groupHomology.H0Iso (k := k) (G := G) A).hom ≫
        (Rep.coinvariantsFunctor k G).map f := by
  sorry