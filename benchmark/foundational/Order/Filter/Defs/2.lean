import Mathlib

lemma Filter.mem_of_eq_inter_left {α} (f : Filter α) {s t u : Set α}
    (h : s ∩ t = u) (hu : u ∈ f) :
    s ∩ t ∈ f := by
  sorry
