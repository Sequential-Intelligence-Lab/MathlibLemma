import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 11. The trivial submodule is always invariant
lemma Representation.subrepresentation_bot
    {k G V : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V] (ρ : Representation k G V) :
    ∀ g : G, (⊥ : Submodule k V) ≤ (⊥ : Submodule k V).comap (ρ g) := by
  sorry
