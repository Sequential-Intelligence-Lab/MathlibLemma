import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 39. Equality of quotient representations if invariant submodules coincide
lemma Representation.quotient_congr
    {k G V : Type*} [CommRing k] [Monoid G]
    [AddCommGroup V] [Module k V]
    (ρ : Representation k G V)
    (W₁ W₂ : Submodule k V)
    (hW₁ : ∀ g, W₁ ≤ W₁.comap (ρ g))
    (hW₂ : ∀ g, W₂ ≤ W₂.comap (ρ g))
    (h : W₁ = W₂) :
    HEq (ρ.quotient W₁ hW₁) (ρ.quotient W₂ hW₂) := by
  sorry