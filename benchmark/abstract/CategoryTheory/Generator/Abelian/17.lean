import Mathlib

open CategoryTheory

/-- Projective objects are closed under isomorphism. -/
lemma Projective_of_iso
  {C : Type*} [Category C]
  {X Y : C} (e : X ≅ Y) [Projective X] :
  Projective Y := by
  sorry