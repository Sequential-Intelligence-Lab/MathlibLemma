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
    Submodule k (V →ₗ[k] W) :=
{ carrier :=
    { f : V →ₗ[k] W |
      ∀ g : G, (ρW g).comp f = f.comp (ρV g) },
  zero_mem' := by
    intro g
    -- (ρW g).comp 0 = 0 and 0.comp (ρV g) = 0
    simp,
  add_mem' := by
    intro f₁ f₂ hf₁ hf₂ g
    -- Use linearity of composition on both sides
    -- (ρW g).comp (f₁ + f₂) = (ρW g).comp f₁ + (ρW g).comp f₂
    -- (f₁ + f₂).comp (ρV g) = f₁.comp (ρV g) + f₂.comp (ρV g)
    simpa [LinearMap.comp_add, LinearMap.add_comp, hf₁ g, hf₂ g],
  smul_mem' := by
    intro a f hf g
    -- (ρW g).comp (a • f) = a • (ρW g).comp f
    -- (a • f).comp (ρV g) = a • f.comp (ρV g)
    simpa [LinearMap.comp_smul, LinearMap.smul_comp, hf g] }