import Mathlib

lemma Filter.frequently_atBot_of_frequently {α} [Preorder α] [IsDirected α (· ≥ ·)]
    {p q : α → Prop}
    (hpq : ∀ᶠ a in Filter.atBot, p a → q a)
    (hp : ∃ᶠ a in Filter.atBot, p a) :
    ∃ᶠ a in Filter.atBot, q a := by
  sorry
