import Mathlib

open CategoryTheory

namespace CategoryTheory

lemma Action.functorCategoryEquivalence_counitIso_app_obj
    {V : Type*} [Category V] {G : Type*} [Group G]
    (F : SingleObj G ⥤ V) (X : SingleObj G) :
    ((Action.functorCategoryEquivalence (V := V) (G := G)).counitIso.app F).hom.app X =
      𝟙 (F.obj X) := by
  sorry

end CategoryTheory