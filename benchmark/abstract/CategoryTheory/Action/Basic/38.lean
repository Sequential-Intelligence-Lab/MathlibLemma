import Mathlib

open CategoryTheory

lemma Action_functorCategoryEquivalence_inverse_ρ
    {V : Type*} [Category V] {G : Type*} [Monoid G]
    (F : SingleObj G ⥤ V) (g : G) :
    ((Action.functorCategoryEquivalence (V := V) (G := G)).inverse.obj F).ρ g =
      F.map g := by
  sorry