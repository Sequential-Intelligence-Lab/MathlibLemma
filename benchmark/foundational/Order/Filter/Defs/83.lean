import Mathlib

lemma Filter.seq_eq {α β} (F : Filter (α → β)) (G : Filter α) :
    Filter.seq F G =
      Filter.bind F (fun f => Filter.map f G) := by
  sorry
