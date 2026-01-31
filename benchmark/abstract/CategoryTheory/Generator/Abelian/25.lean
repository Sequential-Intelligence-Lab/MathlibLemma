import Mathlib

open CategoryTheory

namespace CategoryTheory

/-- In an abelian category, a generator detects epimorphisms. -/
lemma IsIso.comp_left_cancel_epi
  {C : Type*} [Category C] [Abelian C]
  {X Y Z : C} (f : X ⟶ Y) [IsIso f] (g h : Y ⟶ Z)
  (w : f ≫ g = f ≫ h) :
  g = h := by
  sorry

end CategoryTheory