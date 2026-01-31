import Mathlib

universe u v w

open CategoryTheory

lemma Action.res_comp_obj_ρ
    {V : Type u} [Category V]
    {G : Type v} {H : Type v} {K : Type v}
    [Monoid G] [Monoid H] [Monoid K]
    (f : G →* H) (g : H →* K) (M : Action V K) (x : G) :
    ((Action.res (V := V) f).obj ((Action.res (V := V) g).obj M)).ρ x =
      M.ρ (g (f x)) := by
  sorry