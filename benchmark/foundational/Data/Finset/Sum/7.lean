import Mathlib

lemma disjSum_inter_right {α β} [DecidableEq α] [DecidableEq β]
    (s : Finset α) (t₁ t₂ : Finset β) :
    s.disjSum (t₁ ∩ t₂) = (s.disjSum t₁) ∩ (s.disjSum t₂) := by
  sorry