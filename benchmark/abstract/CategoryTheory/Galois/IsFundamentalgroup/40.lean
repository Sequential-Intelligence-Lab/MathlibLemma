import Mathlib

open CategoryTheory

lemma preGaloisCategory_toAut_injective_aut_fiber_as_fundamentalGroup
    {C : Type*} [Category C] [GaloisCategory C]
    (F : C ⥤ FintypeCat) :
    Function.Injective (fun (φ : Aut F) => φ) := by
  sorry