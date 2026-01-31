import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 47. Dual of norm equals norm of dual representation
lemma Representation.norm_dual
    {k G V : Type*} [CommSemiring k] [Group G] [Fintype G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) :
    (Representation.dual ρ).norm =
      Module.Dual.transpose (R := k) ρ.norm := by
  sorry
