import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 53. When `G` is finite, the regular representation is faithful
lemma Representation.leftRegular_faithful
    {k G : Type*} [CommSemiring k] [Group G] [Fintype G]
    (hk : (Fintype.card G : k) ≠ 0) :
    Function.Injective fun g : G => (Representation.leftRegular k G) g := by
  sorry
