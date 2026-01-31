import Mathlib

lemma Filter.coprod_comm {α β} (f : Filter α) (g : Filter β) :
    Filter.coprod f g =
      Filter.map (fun p : β × α => (p.2, p.1)) (Filter.coprod g f) := by
  sorry
