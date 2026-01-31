import Mathlib

open CategoryTheory

/-- The opposite of an injective object is projective. -/
lemma Injective.op_projective
  {C : Type*} [Category C] [Abelian C]
  (X : C) (hX : Injective X) :
  Projective (Opposite.op X) := by
  sorry