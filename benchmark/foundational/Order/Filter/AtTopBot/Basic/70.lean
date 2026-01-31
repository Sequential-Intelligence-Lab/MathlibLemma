import Mathlib

lemma Filter.eventually_atTop_comp {α β}
    [Preorder α] [IsDirected α (· ≤ ·)]
    {p : β → Prop} {f : α → β}
    (hp : ∀ᶠ b in Filter.map f Filter.atTop, p b) :
    ∀ᶠ a in Filter.atTop, p (f a) := by
  sorry
