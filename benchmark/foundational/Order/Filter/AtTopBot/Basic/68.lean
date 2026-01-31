import Mathlib

lemma Filter.eventually_atTop_of_subset {α}
    [Preorder α] [IsDirected α (· ≤ ·)]
    {s t : Set α}
    (hst : s ⊆ t)
    (hs : s ∈ (Filter.atTop : Filter α)) :
    t ∈ (Filter.atTop : Filter α) := by
  sorry
