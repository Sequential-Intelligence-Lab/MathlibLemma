import Mathlib


/-
The definitions below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 90. Intertwiner space as a submodule of linear maps
def Representation.intertwiner_submodule
    {k G V W : Type*} [CommSemiring k] [Group G]
    [AddCommMonoid V] [Module k V]
    [AddCommMonoid W] [Module k W]
    (ρV : Representation k G V)
    (ρW : Representation k G W) :
    Submodule k (V →ₗ[k] W) := by
  sorry