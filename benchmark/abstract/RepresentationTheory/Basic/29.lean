import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 30. Tensor product of trivial representations is trivial
lemma Representation.tprod_trivial_trivial
    {k G V W : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    [AddCommMonoid W] [Module k W] :
    Representation.tprod
      (Representation.trivial k G V)
      (Representation.trivial k G W)
    = Representation.trivial k G (TensorProduct k V W) := by
  sorry