import Mathlib

/-
The definitions below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/

-- 70. Restriction of representation to subgroup as representation
def Representation.restrictSubgroup
    {k G V : Type*} [CommSemiring k] [Group G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) (H : Subgroup G) :
    Representation k H V := by
  sorry