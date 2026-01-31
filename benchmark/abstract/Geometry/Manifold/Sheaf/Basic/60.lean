import Mathlib

open CategoryTheory

universe u v

variable {C : Type u} [Category C]

/-- A generic naturality lemma for a functor `F`. -/
lemma sheaf_map_res_res
    (F : Cᵒᵖ ⥤ Type v)
    {U V W : Cᵒᵖ}
    (iUV : U ⟶ V) (iVW : V ⟶ W) :
    F.map iUV ≫ F.map iVW = F.map (iUV ≫ iVW) := by
  sorry