import Mathlib

universe v u

open CategoryTheory

/-- Projective objects form a replete subcategory. -/
lemma Projective.replete
  {C : Type u} [Category.{v} C] [Abelian C]
  (X Y : C) (e : X ≅ Y) [Projective X] :
  Projective Y := by
  sorry