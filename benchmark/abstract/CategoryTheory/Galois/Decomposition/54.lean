import Mathlib

universe u

open CategoryTheory

/-- A natural transformation between fiber functors on a Galois category is an isomorphism
if it is bijective on each object. -/
lemma natIso_of_pointwise_bijective
    {C : Type u} [Category C]
    [CategoryTheory.GaloisCategory C]
    (F G : C ⥤ FintypeCat)
    (η : F ⟶ G)
    (hη : ∀ X, Function.Bijective (η.app X)) :
    IsIso η := by
  sorry