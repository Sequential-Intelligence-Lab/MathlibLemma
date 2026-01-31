import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open CategoryTheory
open CategoryTheory.FintypeCat
open PreGaloisCategory

theorem PreGaloisCategory.toAut_apply_mul
    {C : Type*} [Category C] (F : C ⥤ FintypeCat)
    (G : Type*) [Group G] [∀ X : C, MulAction G (F.obj X)]
    [PreGaloisCategory.IsNaturalSMul F G]
    (g h : G) (X : C) (x : F.obj X) :
    (PreGaloisCategory.toAut F G (g * h)).hom.app X x =
      (PreGaloisCategory.toAut F G g).hom.app X
        ((PreGaloisCategory.toAut F G h).hom.app X x) := by
  simp only [toAut, NatTrans.comp_app]
  all_goals
    try simp [mul_smul]