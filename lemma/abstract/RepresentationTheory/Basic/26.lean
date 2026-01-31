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
    -- 0 is fixed because every linear map sends 0 to 0
    intro g
    simpa using (ρ g).map_zero
  add_mem' := by
    -- closed under addition: use additivity of linear maps
    intro a b ha hb g
    have ha' := ha g
    have hb' := hb g
    calc
      ρ g (a + b)
          = ρ g a + ρ g b := (ρ g).map_add a b
      _  = a + b := by simpa [ha', hb']
  smul_mem' := by
    -- closed under scalar multiplication: use linearity w.r.t. scalars
    intro a v hv g
    have hv' := hv g
    calc
      ρ g (a • v)
          = a • ρ g v := (ρ g).map_smul a v
      _  = a • v := by simpa [hv']

lemma mem_fixedSubmodule_iff
    (ρ : Representation k G V) (v : V) :
    v ∈ ρ.fixedSubmodule ↔ ∀ g : G, ρ g v = v := by
  -- direct from the definition of `fixedSubmodule`
  rfl

end Representation