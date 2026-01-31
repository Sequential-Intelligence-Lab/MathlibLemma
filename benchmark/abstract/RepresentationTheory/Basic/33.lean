import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 34. Product of trivial representations is trivial
lemma Representation.prod_trivial
    {k G V W : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    [AddCommMonoid W] [Module k W] :
    Representation.prod
      (ρV := Representation.trivial k G V)
      (ρW := Representation.trivial k G W)
    = Representation.trivial k G (V × W) := by
  sorry
