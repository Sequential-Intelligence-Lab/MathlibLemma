import Mathlib

lemma Filter.eventually_atTop_of_forall {α} [Preorder α] [IsDirected α (· ≤ ·)]
    {p : α → Prop} (h : ∀ a, p a) :
    (∀ᶠ a in Filter.atTop, p a) := by
  sorry
