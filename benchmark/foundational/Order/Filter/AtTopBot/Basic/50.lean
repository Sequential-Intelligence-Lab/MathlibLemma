import Mathlib

lemma Filter.frequently_atTop_iff_forall_ge {α}
    [Preorder α] [IsDirected α (· ≤ ·)]
    {p : α → Prop} :
    (∃ᶠ a in Filter.atTop, p a) ↔
      ∀ a₀, ∃ a ≥ a₀, p a := by
  sorry
