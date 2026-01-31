import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 6. Characterization of equality of representations by pointwise equality
lemma Representation.ext
    {k G V : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    {ρ₁ ρ₂ : Representation k G V}
    (h : ∀ g : G, ρ₁ g = ρ₂ g) : ρ₁ = ρ₂ := by
  sorry
