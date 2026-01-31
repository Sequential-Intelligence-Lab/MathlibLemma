import Mathlib

open CategoryTheory

universe u v

/-- Subobjects of `op X` are equivalent to "quotient objects" of `X`
(in the sense of subobjects of `X` in the opposite category) in an abelian category. -/
lemma subobject_op_equiv_quotient
  {C : Type u} [Category.{v} C] [Abelian C]
  (X : C) :
  Nonempty (Subobject (Opposite.op X) ≃ Subobject (Opposite.unop (Opposite.op X))) := by
  sorry