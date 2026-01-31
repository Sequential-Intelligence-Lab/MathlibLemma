import Mathlib

lemma Filter.eventually_atBot_iff_forall_finite {α}
    [Preorder α] [IsDirected α (· ≥ ·)]
    {p : α → Prop} :
    (∀ᶠ a in Filter.atBot, p a) ↔
      ∃ a₀, ∀ a ≤ a₀, p a := by
  sorry
