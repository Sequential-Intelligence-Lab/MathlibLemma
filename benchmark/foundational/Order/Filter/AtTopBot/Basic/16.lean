import Mathlib

lemma Filter.eventually_atBot_of_forall {α} [Preorder α] [IsDirected α (· ≥ ·)]
    {p : α → Prop} (h : ∀ a, p a) :
    (∀ᶠ a in Filter.atBot, p a) := by
  sorry
