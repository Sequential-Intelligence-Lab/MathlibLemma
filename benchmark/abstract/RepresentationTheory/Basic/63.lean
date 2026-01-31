import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 64. ofDistribMulAction is faithful if the action is faithful
lemma Representation.ofDistribMulAction_faithful
    {k G A : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid A] [Module k A]
    [DistribMulAction G A] [SMulCommClass G k A]
    (h : ∀ g ≠ (1 : G), ∃ a : A, g • a ≠ a) :
    Function.Injective
      (@Representation.ofDistribMulAction k G A _ _ _ _ _) := by
  sorry