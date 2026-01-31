import Mathlib


/-
The definitions below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 20. Compatibility of `asModule` with product representations
def Representation.asModule_prod_equiv
    {k G V W : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    [AddCommMonoid W] [Module k W]
    (ρV : Representation k G V) (ρW : Representation k G W) :
    (Representation.prod ρV ρW).asModule ≃ₗ[k]
      ρV.asModule × ρW.asModule := by
  -- Define the forward linear map: identity on the underlying type V × W
  let toLinear :
      (Representation.prod ρV ρW).asModule →ₗ[k] ρV.asModule × ρW.asModule :=
    { toFun := fun x => x,
      map_add' := by
        intro x y
        rfl,
      map_smul' := by
        intro a x
        rfl }
  -- Define the inverse linear map: also identity on V × W
  let invLinear :
      ρV.asModule × ρW.asModule →ₗ[k] (Representation.prod ρV ρW).asModule :=
    { toFun := fun x => x,
      map_add' := by
        intro x y
        rfl,
      map_smul' := by
        intro a x
        rfl }
  -- Assemble into a linear equivalence using `ofLinear`
  refine LinearEquiv.ofLinear toLinear invLinear ?left_inv ?right_inv
  · -- left inverse: toLinear ∘ₗ invLinear = id
    ext x <;> rfl
  · -- right inverse: invLinear ∘ₗ toLinear = id
    ext x <;> rfl