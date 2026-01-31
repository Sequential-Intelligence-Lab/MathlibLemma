import Mathlib

open CategoryTheory

-- 8
lemma PreGaloisCategory.toAut_comp_apply
    {C : Type*} [Category C] (F : C ⥤ FintypeCat)
    (G : Type*) [Group G] [∀ X, MulAction G (F.obj X)]
    [PreGaloisCategory.IsNaturalSMul F G]
    (g : G) (X Y : C) (f : X ⟶ Y) (x : F.obj X) :
    (PreGaloisCategory.toAut F G g).hom.app Y (F.map f x) =
      F.map f ((PreGaloisCategory.toAut F G g).hom.app X x) := by
  sorry