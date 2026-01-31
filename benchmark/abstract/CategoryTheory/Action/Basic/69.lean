import Mathlib

open CategoryTheory

lemma Action.resEquiv_counitIso_app_obj
    {V : Type*} [Category V]
    {G H : Type*} [Monoid G] [Monoid H]
    (e : G ≃* H) (M : Action V G) :
    ((Action.resEquiv (V := V) (G := G) (H := H) e).counitIso.app M).hom.hom =
      𝟙 M.V := by
  sorry