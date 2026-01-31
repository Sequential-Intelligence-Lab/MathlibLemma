import Mathlib

open CategoryTheory

namespace CategoryTheory

/-- In an abelian category, a generator detects epimorphisms. -/
lemma IsIso.comp_left_cancel_epi
  {C : Type*} [Category C] [Abelian C]
  {X Y Z : C} (f : X ⟶ Y) [IsIso f] (g h : Y ⟶ Z)
  (w : f ≫ g = f ≫ h) :
  g = h := by
  -- Compose both sides with the inverse of `f` on the left.
  have hw := congrArg (fun k => inv f ≫ k) w
  -- Simplify using associativity and the isomorphism identities.
  simp [Category.assoc] at hw
  -- Now `hw` is exactly `g = h`.
  simpa using hw

end CategoryTheory