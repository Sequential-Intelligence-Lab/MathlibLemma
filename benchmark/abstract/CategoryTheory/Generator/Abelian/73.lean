import Mathlib

open CategoryTheory

/-- The coimage of an epimorphism between projective objects is projective. -/
lemma Projective.coimage_of_epi
  {C : Type*} [Category C] [Abelian C]
  {X Y : C} [Projective X] [Projective Y]
  (f : X ⟶ Y) [Epi f] :
  Projective (Abelian.coimage f) := by
  sorry