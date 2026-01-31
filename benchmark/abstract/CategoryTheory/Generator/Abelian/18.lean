import Mathlib

universe u

open CategoryTheory

-- A placeholder Injective class on objects of a category.
class Injective (C : Type u) [Category C] (X : C) : Prop where
  dummy : True

/-- Injective objects form a replete subcategory. -/
lemma Injective.replete
  {C : Type u} [Category C] [Abelian C]
  {X Y : C} (e : X ≅ Y) [Injective C X] :
  Injective C Y := by
  sorry