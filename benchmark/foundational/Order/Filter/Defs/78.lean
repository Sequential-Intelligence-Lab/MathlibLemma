import Mathlib

lemma Filter.NeBot.mem_of_superset {α} {f : Filter α} [Filter.NeBot f]
    {s t : Set α} (hs : s ∈ f) (hst : s ⊆ t) :
    t ∈ f := by
  sorry
