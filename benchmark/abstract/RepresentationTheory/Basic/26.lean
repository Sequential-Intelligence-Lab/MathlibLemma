import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/

namespace Representation

variable {k G V : Type*} [CommSemiring k] [Group G]
  [AddCommMonoid V] [Module k V]

/-- The submodule of `V` consisting of all fixed vectors for the representation `ρ`. -/
def fixedSubmodule (ρ : Representation k G V) : Submodule k V where
  carrier := { v : V | ∀ g : G, ρ g v = v }
  zero_mem' := by
    -- proof intentionally omitted
    sorry
  add_mem' := by
    -- proof intentionally omitted
    sorry
  smul_mem' := by
    -- proof intentionally omitted
    sorry

lemma mem_fixedSubmodule_iff
    (ρ : Representation k G V) (v : V) :
    v ∈ ρ.fixedSubmodule ↔ ∀ g : G, ρ g v = v := by
  -- proof intentionally omitted
  sorry

end Representation