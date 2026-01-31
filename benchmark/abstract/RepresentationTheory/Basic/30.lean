import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 31. Dual of trivial representation is trivial
lemma Representation.dual_trivial
    {k G V : Type*} [CommSemiring k] [Group G]
    [AddCommMonoid V] [Module k V] :
    Representation.dual (ρV := Representation.trivial k G V)
    = Representation.trivial k G (Module.Dual k V) := by
  sorry
