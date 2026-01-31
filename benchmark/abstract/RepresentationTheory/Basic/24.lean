import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 25. Norm acts as scalar multiple of identity on invariants
lemma Representation.norm_on_invariants
    {k G V : Type*} [Field k] [Group G] [Fintype G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V)
    (hG : (Fintype.card G : k) ≠ 0)
    (v : V) (hv : ∀ g : G, ρ g v = v) :
    ρ.norm v = (Fintype.card G : k) • v := by
  sorry
