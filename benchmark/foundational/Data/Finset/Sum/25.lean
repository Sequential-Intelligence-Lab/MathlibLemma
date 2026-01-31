import Mathlib

lemma disjSum_eq_singleton_iff {α β} {s : Finset α} {t : Finset β} {x : α ⊕ β} :
    s.disjSum t = {x} ↔
      (∃ a, x = .inl a ∧ s = {a} ∧ t = ∅) ∨
      ∃ b, x = .inr b ∧ s = ∅ ∧ t = {b} := by
  sorry
