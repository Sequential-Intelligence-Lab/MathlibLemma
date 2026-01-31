import Mathlib

open CategoryTheory

lemma PreGaloisCategory.toAut_hom_app_smul
    {C : Type*} [CategoryTheory.Category C]
    (F : C ⥤ FintypeCat)
    (G : Type*) [Group G] [∀ X, MulAction G (F.obj X)]
    [PreGaloisCategory.IsNaturalSMul F G]
    (g : G) (X : C) (x : F.obj X) :
    ((PreGaloisCategory.toAut F G g).hom.app X) (g⁻¹ • x) = x := by
  -- `simp` knows that `(PreGaloisCategory.toAut F G g).hom.app X`
  -- acts as smul by `g` on `F.obj X`, so the LHS becomes
  -- `g • (g⁻¹ • x)` and simplifies to `x`.
  simpa