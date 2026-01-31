import Mathlib

lemma disjSum_union_right {α β : Type _} [DecidableEq α] [DecidableEq β]
    (s : Finset α) (t₁ t₂ : Finset β) :
    s.disjSum (t₁ ∪ t₂) = (s.disjSum t₁) ∪ (s.disjSum t₂) := by
  sorry