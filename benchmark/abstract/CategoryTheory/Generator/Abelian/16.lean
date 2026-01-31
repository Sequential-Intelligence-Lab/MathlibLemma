import Mathlib

open CategoryTheory

/-- Injective objects are closed under isomorphism. -/
lemma Injective_of_iso
  {C : Type*} [Category C] [Abelian C]
  {X Y : C} (e : X ≅ Y) (hX : Injective X) :
  Injective Y := by
  sorry