import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 58. Isometry property of group action when representation is isometry
lemma Representation.apply_isometry
    {k G V : Type*} [NormedField k] [Group G]
    [SeminormedAddCommGroup V] [NormedSpace k V]
    [Norm (V →ₗ[k] V)]
    (ρ : Representation k G V)
    (hρ : ∀ g, Isometry (ρ g)) :
    ∀ g, ‖ρ g‖ = 1 := by
  sorry