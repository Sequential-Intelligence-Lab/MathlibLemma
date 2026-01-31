import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 54. Compatibility of ofQuotient with quotient map
lemma Representation.ofQuotient_comp_quotient
    {k G V : Type*} [CommSemiring k] [Group G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) (S : Subgroup G)
    [S.Normal] [Representation.IsTrivial (ρ.comp S.subtype)] :
    True := by
  sorry