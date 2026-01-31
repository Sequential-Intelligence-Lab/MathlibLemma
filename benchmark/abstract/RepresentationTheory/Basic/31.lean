import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 32. linHom of trivial representations is trivial
lemma Representation.linHom_trivial_trivial
    {k G V W : Type*} [CommSemiring k] [Group G]
    [AddCommMonoid V] [Module k V]
    [AddCommMonoid W] [Module k W] :
    Representation.linHom
      (ρV := Representation.trivial k G V)
      (ρW := Representation.trivial k G W)
    = Representation.trivial k G (V →ₗ[k] W) := by
  sorry
