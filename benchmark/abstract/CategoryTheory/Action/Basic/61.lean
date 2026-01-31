import Mathlib

universe u

lemma Action.res_full_of_bijective
    {G H : Type*} [Monoid G] [Monoid H] (f : G →* H)
    (hf : Function.Bijective f) :
    (Action.res (V := Type u) f).Full := by
  sorry