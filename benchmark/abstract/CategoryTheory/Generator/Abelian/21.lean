import Mathlib

universe v u

open CategoryTheory

/-- In an abelian category, quotient objects of a projective object are projective if they split. -/
lemma Projective_of_split_epi
  {C : Type u} [Category.{v} C] [Abelian C]
  {X Y : C} [CategoryTheory.Projective.{v} X] (f : X ⟶ Y) [Epi f]
  (s : Y ⟶ X) (hs : s ≫ f = 𝟙 Y) :
  CategoryTheory.Projective.{v} Y := by
  sorry