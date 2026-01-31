import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/

/-- Placeholder definition for the fixed submodule of a representation.
In mathlib this may already exist under a different name; here we only
need a compilable statement, so we do not implement it. -/
def MonoidHom.fixedSubmodule
    {k G V : Type*} [CommSemiring k] [Group G]
    [AddCommMonoid V] [Module k V]
    (ρ : G →* V →ₗ[k] V) : Submodule k V :=
  -- Placeholder: we simply take the whole space as the fixed submodule.
  ⊤

-- 28. Invariants of a trivial representation is all `V`.
lemma Representation.fixedSubmodule_trivial
    {k G V : Type*} [CommSemiring k] [Group G]
    [AddCommMonoid V] [Module k V] :
    (Representation.trivial k G V).fixedSubmodule = ⊤ := by
  rfl