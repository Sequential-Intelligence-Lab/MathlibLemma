import Mathlib

lemma Filter.eventually_atTop_iff_forall_finite {α}
    [Preorder α] [IsDirected α (· ≤ ·)] [Nonempty α]
    {p : α → Prop} :
    (∀ᶠ a in Filter.atTop, p a) ↔
      ∃ a₀, ∀ a ≥ a₀, p a := by
  -- This is exactly `Filter.eventually_atTop` in Mathlib.
  simpa using (Filter.eventually_atTop (p := p))