import Mathlib

lemma Filter.bind_pure {α β} (f : Filter α) (g : α → β) :
    Filter.bind f (fun a => pure (g a)) = Filter.map g f := by
  sorry
