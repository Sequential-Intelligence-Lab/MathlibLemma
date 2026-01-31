import Mathlib

open CategoryTheory

lemma PreGaloisCategory.toAut_hom_app_smul
    {C : Type*} [CategoryTheory.Category C]
    (F : C ⥤ FintypeCat)
    (G : Type*) [Group G] [∀ X, MulAction G (F.obj X)]
    [PreGaloisCategory.IsNaturalSMul F G]
    (g : G) (X : C) (x : F.obj X) :
    ((PreGaloisCategory.toAut F G g).hom.app X) (g⁻¹ • x) = x := by
  sorry