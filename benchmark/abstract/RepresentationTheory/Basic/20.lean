import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 21. Norm is central in image of group
lemma Representation.norm_comm
    {k G V : Type*} [CommSemiring k] [Group G] [Fintype G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) (g : G) :
    ρ g ∘ₗ ρ.norm = ρ.norm ∘ₗ ρ g := by
  sorry
