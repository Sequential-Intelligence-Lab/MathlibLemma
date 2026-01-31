import Mathlib

universe v u

open CategoryTheory

/-- If `G` is a coseparator then `op G` is a separator. -/
lemma isSeparator_op_of_isCoseparator
  {C : Type u} [Category.{v} C]
  {G : C} (hG : IsCoseparator G) :
  IsSeparator (Opposite.op G) := by
  sorry