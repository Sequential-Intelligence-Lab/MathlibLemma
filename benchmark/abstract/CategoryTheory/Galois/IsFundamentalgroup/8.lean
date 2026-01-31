import Mathlib

open CategoryTheory

-- 9
lemma PreGaloisCategory.toAut_hom_inv_app_apply
    {C : Type*} [Category C] (F : C ⥤ FintypeCat)
    (G : Type*) [Group G] [∀ X, MulAction G (F.obj X)]
    [PreGaloisCategory.IsNaturalSMul F G]
    (g : G) (X : C) (x : F.obj X) :
    ((PreGaloisCategory.toAut F G g).inv.app X) x = g⁻¹ • x := by
  sorry