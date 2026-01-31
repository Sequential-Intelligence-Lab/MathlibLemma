import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 12. The top submodule is always invariant
lemma Representation.subrepresentation_top
    {k G V : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V] (ρ : Representation k G V) :
    ∀ g : G, (⊤ : Submodule k V) ≤ (⊤ : Submodule k V).comap (ρ g) := by
  intro g
  -- `(⊤ : Submodule k V).comap (ρ g) = ⊤`, so the inequality is trivial
  simpa [Submodule.comap_top]