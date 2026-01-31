import Mathlib


/-
The definitions below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 20. Compatibility of `asModule` with product representations
def Representation.asModule_prod_equiv
    {k G V W : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    [AddCommMonoid W] [Module k W]
    (ρV : Representation k G V) (ρW : Representation k G W) :
    (Representation.prod ρV ρW).asModule ≃ₗ[k]
      ρV.asModule × ρW.asModule := by
  sorry