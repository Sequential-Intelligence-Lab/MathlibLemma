import Mathlib

open CategoryTheory

lemma Action.resComp_naturality
    {V : Type*} [Category V]
    {G H K : Type*} [Monoid G] [Monoid H] [Monoid K]
    (f : G →* H) (g : H →* K)
    (M : Action V K) :
    ((Action.resComp (V := V) f g).hom.app M) ≫
      ((Action.resComp (V := V) f g).hom.app M) =
    ((Action.resComp (V := V) f g).hom.app M) ≫
      ((Action.resComp (V := V) f g).hom.app M) := by
  sorry