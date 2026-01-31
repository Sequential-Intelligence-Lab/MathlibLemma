import Mathlib

lemma Filter.comap_le_iff_le_map {α β} (f : Filter α) (g : Filter β) (m : α → β) :
    Filter.comap m g ≤ f ↔ g ≤ Filter.map m f := by
  sorry
