import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 78. Dual representation is contragredient
lemma Representation.dual_contragredient
    {k G V : Type*} [Field k] [Group G]
    [AddCommGroup V] [Module k V]
    (ρ : Representation k G V) (g : G) (f : Module.Dual k V) (v : V) :
    (Representation.dual ρ g f) v = f (ρ g⁻¹ v) := by
  sorry
