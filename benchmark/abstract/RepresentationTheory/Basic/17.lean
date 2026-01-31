import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 18. Quotient representation from invariant kernel
lemma Representation.quotient_of_range
    {k G V W : Type*} [CommRing k] [Monoid G]
    [AddCommGroup V] [Module k V]
    [AddCommGroup W] [Module k W]
    (ρV : Representation k G V) (ρW : Representation k G W)
    (f : V →ₗ[k] W)
    (hf : ∀ g, ρW g ∘ₗ f = f ∘ₗ ρV g) :
    ∀ g, LinearMap.range f ≤ (LinearMap.range f).comap (ρW g) := by
  sorry
