import Mathlib

open CategoryTheory

/-- A connected object in a Galois category is indecomposable with respect to finite coproducts. -/
lemma connected_indecomposable_coprod
    {C : Type u} [Category.{u} C] [CategoryTheory.GaloisCategory C]
    {X Y Z : C} (hX : CategoryTheory.PreGaloisCategory.IsConnected X)
    (f : X ≅ Y ⨿ Z) :
    (∃ g : X ⟶ Y, IsIso g) ∨ (∃ h : X ⟶ Z, IsIso h) := by
  sorry