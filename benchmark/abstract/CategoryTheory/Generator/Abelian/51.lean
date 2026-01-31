import Mathlib

open CategoryTheory

/-- A projective separator in the opposite category corresponds to an injective coseparator. -/
lemma projective_separator_op_iff_injective_coseparator
  {C : Type*} [Category C] (A : Abelian C)
  (G : C) :
  (Projective (Opposite.op G) ∧ IsSeparator (Opposite.op G)) ↔
  (Injective G ∧ IsCoseparator G) := by
  sorry