import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/

-- 24. Invariants lie in range of norm (after inverting |G|)
lemma Representation.invariants_le_range_norm
    {k G V : Type*} [Field k] [Group G] [Fintype G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V)
    (hG : (Fintype.card G : k) ≠ 0) :
    ρ.invariants ≤ LinearMap.range ρ.norm := by
  sorry