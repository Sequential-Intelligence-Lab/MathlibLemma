import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 26. Fixed points form a submodule
def Representation.fixedSubmodule
    {k G V : Type*} [CommSemiring k] [Group G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) :
    Submodule k V :=
  { carrier := { v : V | ∀ g : G, ρ g v = v }
    zero_mem' := by
      intro g
      -- ρ g is a linear map, so it preserves zero
      simpa using (LinearMap.map_zero (ρ g))
    add_mem' := by
      intro a b ha hb g
      -- use linearity: ρ g (a + b) = ρ g a + ρ g b
      have h1 := LinearMap.map_add (ρ g) a b
      -- ha g : ρ g a = a, hb g : ρ g b = b
      specialize ha g
      specialize hb g
      simpa [ha, hb] using h1
    smul_mem' := by
      intro c x hx g
      -- use linearity: ρ g (c • x) = c • ρ g x
      have h1 := LinearMap.map_smulₛₗ (ρ g) c x
      specialize hx g
      simpa [hx] using h1 }