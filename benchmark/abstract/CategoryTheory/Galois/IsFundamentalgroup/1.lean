import Mathlib

open CategoryTheory

-- We assume the relevant namespace and structures already exist in Mathlib.
lemma PreGaloisCategory.toAut_eq_iff
    {C : Type*} [Category C]
    (F : C ⥤ FintypeCat)
    (G : Type*) [Group G] [∀ X, MulAction G (F.obj X)]
    [PreGaloisCategory.IsNaturalSMul F G]
    {g h : G}
    (hcond : ∀ (X : C) (x : F.obj X), g • x = h • x) :
    PreGaloisCategory.toAut F G g = PreGaloisCategory.toAut F G h := by
  sorry