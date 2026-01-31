import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 86. Compatibility of `ofMulAction` with linearization (`MonoidAlgebra`)
lemma Representation.ofMulAction_asModuleEquiv
    {k G H : Type*} [CommSemiring k] [Monoid G]
    [MulAction G H] :
    True := by
  sorry
