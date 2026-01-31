import Mathlib

open CategoryTheory

lemma Action.res_eq_resId_comp
    {V : Type*} [Category V]
    {G H : Type*} [Monoid G] [Monoid H]
    (f : G →* H) :
    Action.res (V := V) f =
      Action.res (V := V) f ⋙
        Action.res (V := V) (MonoidHom.id G) := by
  sorry