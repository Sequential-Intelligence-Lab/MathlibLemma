import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 80. linHom representation fixes identity map
lemma Representation.linHom_fix_id
    {k G V : Type*} [CommSemiring k] [Group G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) (g : G) :
    (Representation.linHom ρ ρ g) (LinearMap.id) = LinearMap.id := by
  sorry
