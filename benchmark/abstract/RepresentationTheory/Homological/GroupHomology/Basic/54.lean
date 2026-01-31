import Mathlib

open CategoryTheory

universe u v

variable {C : Type u} [Category C]

def groupHomology.groupHomologyIso_of_isoRep
    (F : C ⥤ Type v) {A B : C} (e : A ≅ B) :
    F.obj A ≅ F.obj B := by
  sorry