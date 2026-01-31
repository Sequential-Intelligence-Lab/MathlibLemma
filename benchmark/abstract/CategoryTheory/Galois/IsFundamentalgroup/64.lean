import Mathlib

open CategoryTheory
open CategoryTheory.PreGaloisCategory

lemma PreGaloisCategory.IsFundamentalGroup.aut_stabilizer_clopen'
    {C : Type*} [Category C] [GaloisCategory C]
    (F : C ⥤ FintypeCat) [FiberFunctor F]
    (X : C) (x : F.obj X) :
    IsClopen { t : Aut F | t.hom.app X x = x } := by
  sorry