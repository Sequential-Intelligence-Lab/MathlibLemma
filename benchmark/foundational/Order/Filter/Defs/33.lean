import Mathlib

lemma Filter.map_comp {α β γ} (f : Filter α) (g : α → β) (h : β → γ) :
    Filter.map h (Filter.map g f) = Filter.map (fun x => h (g x)) f := by
  sorry
