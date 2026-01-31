import Mathlib

open CategoryTheory

/-- If `G` is a separator then `op G` is a coseparator. -/
lemma isCoseparator_op_of_isSeparator
  {C : Type u} [Category C]
  {G : C} (hG : IsSeparator G) :
  IsCoseparator (Opposite.op G) := by
  sorry