import Mathlib

open CategoryTheory

lemma PreGaloisCategory_toAut_commute_with_map
    {C : Type*} [Category C] (F : C ⥤ FintypeCat)
    (G : Type*) [Group G] [∀ X, MulAction G (F.obj X)]
    [PreGaloisCategory.IsNaturalSMul F G]
    (g : G) {X Y : C} (f : X ⟶ Y) (x : F.obj X) :
    F.map f ((PreGaloisCategory.toAut F G g).hom.app X x) =
      (PreGaloisCategory.toAut F G g).hom.app Y (F.map f x) := by
  sorry