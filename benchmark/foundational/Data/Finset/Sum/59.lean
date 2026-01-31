import Mathlib

lemma sumEquiv_image_swap {α β} [DecidableEq α] [DecidableEq β]
    (u : Finset (α ⊕ β)) :
    Finset.sumEquiv (u.image (Sum.swap : α ⊕ β → β ⊕ α)) =
      Prod.swap (Finset.sumEquiv u) := by
  sorry