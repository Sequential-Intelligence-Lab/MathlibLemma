import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 17. Subrepresentation induced by invariant kernel
def Representation.subrepresentation_of_ker
    {k G V W : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    [AddCommMonoid W] [Module k W]
    (ρV : Representation k G V) (ρW : Representation k G W)
    (f : V →ₗ[k] W)
    (hf : ∀ g, ρW g ∘ₗ f = f ∘ₗ ρV g) :
    Representation k G (LinearMap.ker f) := by
  sorry