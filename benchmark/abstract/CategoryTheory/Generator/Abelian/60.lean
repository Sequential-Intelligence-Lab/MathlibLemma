import Mathlib

open CategoryTheory

/-- A coseparator in a preadditive category is nondegenerate in the second variable. -/
lemma IsCoseparator.nondegenerate_bilinear
  {C : Type*} [Category C] [Preadditive C]
  {G : C} (hG : CategoryTheory.IsCoseparator G) :
  ∀ {X : C} (f : G ⟶ X), (∀ g : X ⟶ G, f ≫ g = 0) → f = 0 := by
  sorry