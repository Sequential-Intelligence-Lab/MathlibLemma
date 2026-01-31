import Mathlib

open CategoryTheory

-- 1
lemma PreGaloisCategory.toAut_injective
    {C : Type*} [Category C] (F : C ⥤ FintypeCat)
    (G : Type*) [Group G] [∀ X, MulAction G (F.obj X)]
    [CategoryTheory.PreGaloisCategory.IsNaturalSMul F G]
    (h : ∀ (g : G), (∀ (X : C) (x : F.obj X), g • x = x) → g = 1) :
    Function.Injective (CategoryTheory.PreGaloisCategory.toAut F G) := by
  sorry