import Mathlib

lemma Filter.comap_comp {α β γ} (f : Filter γ) (g : β → γ) (h : α → β) :
    Filter.comap h (Filter.comap g f) = Filter.comap (fun x => g (h x)) f := by
  sorry
