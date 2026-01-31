import Mathlib

open CategoryTheory

lemma PreGaloisCategory.IsFundamentalGroup.aut_compactSpace
    {C : Type*} [Category C]
    (F : C ⥤ FintypeCat) :
    CompactSpace (Aut F) := by
  sorry