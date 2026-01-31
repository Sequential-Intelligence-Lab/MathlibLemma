import Mathlib

open CategoryTheory

lemma PreGaloisCategory.toAut_apply_one
    {C : Type*} [Category C] (F : C ⥤ FintypeCat)
    (G : Type*) [Group G] [∀ X, MulAction G (F.obj X)]
    [PreGaloisCategory.IsNaturalSMul F G]
    (X : C) (x : F.obj X) :
    (PreGaloisCategory.toAut F G 1).hom.app X x = x := by
  sorry