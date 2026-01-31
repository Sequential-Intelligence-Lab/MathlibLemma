import Mathlib

lemma disjSum_inter_left {α β} [DecidableEq α] [DecidableEq β]
    (s₁ s₂ : Finset α) (t : Finset β) :
    (s₁ ∩ s₂).disjSum t = (s₁.disjSum t) ∩ (s₂.disjSum t) := by
  sorry