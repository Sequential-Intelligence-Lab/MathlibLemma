import Mathlib

open CategoryTheory

lemma PreGaloisCategory.toAut_trivial_action
    {C : Type*} [Category C]
    (F : C ⥤ FintypeCat)
    (G : Type*) [Group G] [∀ X, MulAction G (F.obj X)]
    [PreGaloisCategory.IsNaturalSMul F G]
    (g : G)
    (htriv : ∀ (X : C) (x : F.obj X), g • x = x) :
    PreGaloisCategory.toAut F G g = 1 := by
  sorry