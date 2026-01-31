import Mathlib

lemma Filter.frequently_atBot_iff_forall_le {α}
    [Preorder α] [IsDirected α (· ≥ ·)]
    {p : α → Prop} :
    (∃ᶠ a in Filter.atBot, p a) ↔
      ∀ a₀, ∃ a ≤ a₀, p a := by
  sorry
