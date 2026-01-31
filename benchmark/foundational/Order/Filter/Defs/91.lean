import Mathlib

lemma Filter.IsBounded.map {α β} {r : β → β → Prop}
    (f : Filter α) (g : α → β)
    (hb : Filter.IsBounded (fun x y => r (g x) (g y)) f) :
    Filter.IsBounded r (Filter.map g f) := by
  sorry
