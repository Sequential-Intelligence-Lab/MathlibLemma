import Mathlib

lemma Filter.frequently_atTop_of_frequently {α} [Preorder α] [IsDirected α (· ≤ ·)]
    {p q : α → Prop}
    (hpq : ∀ᶠ a in Filter.atTop, p a → q a)
    (hp : ∃ᶠ a in Filter.atTop, p a) :
    ∃ᶠ a in Filter.atTop, q a := by
  sorry
