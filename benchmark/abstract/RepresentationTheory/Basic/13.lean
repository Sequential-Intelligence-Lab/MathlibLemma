import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 14. Invariance of supremum of invariant submodules
lemma Representation.subrepresentation_sup
    {k G V : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V] (ρ : Representation k G V)
    (W₁ W₂ : Submodule k V)
    (h₁ : ∀ g, W₁ ≤ W₁.comap (ρ g))
    (h₂ : ∀ g, W₂ ≤ W₂.comap (ρ g)) :
    ∀ g, W₁ ⊔ W₂ ≤ (W₁ ⊔ W₂).comap (ρ g) := by
  sorry
