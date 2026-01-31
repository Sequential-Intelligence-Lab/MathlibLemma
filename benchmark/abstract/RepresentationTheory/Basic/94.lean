import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 95. Sum of subrepresentations is a subrepresentation
lemma Representation.sum_subrepresentation
    {k G V : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V)
    (ι : Type*) (W : ι → Submodule k V)
    (hW : ∀ i g, W i ≤ (W i).comap (ρ g)) :
    ∀ g, ⨆ i, W i ≤ (⨆ i, W i).comap (ρ g) := by
  sorry
