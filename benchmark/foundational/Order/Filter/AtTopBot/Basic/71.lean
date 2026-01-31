import Mathlib

lemma Filter.eventually_atBot_comp {α β}
    [Preorder α] [IsDirected α (· ≥ ·)]
    {p : β → Prop} {f : α → β}
    (hp : ∀ᶠ b in Filter.map f Filter.atBot, p b) :
    ∀ᶠ a in Filter.atBot, p (f a) := by
  sorry
