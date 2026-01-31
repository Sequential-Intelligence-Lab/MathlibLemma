import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 79. linHom representation acts by conjugation on endomorphisms
lemma Representation.linHom_End
    {k G V : Type*} [CommSemiring k] [Group G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) (g : G) (f : V →ₗ[k] V) :
    (Representation.linHom ρ ρ g f) = ρ g ∘ₗ f ∘ₗ ρ g⁻¹ := by
  -- This follows from the general formula for `Representation.linHom`.
  -- In mathlib this lemma is named `Representation.linHom_apply`.
  simpa using
    (Representation.linHom_apply (ρ₁ := ρ) (ρ₂ := ρ) (g := g) (f := f))