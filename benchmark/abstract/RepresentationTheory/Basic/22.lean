import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/

-- 23. Image of norm is fixed points
lemma Representation.range_norm_le_invariants
    {k G V : Type*} [CommSemiring k] [Group G] [Fintype G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) :
    LinearMap.range ρ.norm ≤ ρ.invariants := by
  sorry