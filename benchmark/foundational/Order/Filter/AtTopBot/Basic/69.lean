import Mathlib

lemma Filter.eventually_atBot_of_subset {α}
    [Preorder α] [IsDirected α (· ≥ ·)]
    {s t : Set α}
    (hst : s ⊆ t)
    (hs : s ∈ (Filter.atBot : Filter α)) :
    t ∈ (Filter.atBot : Filter α) := by
  sorry
