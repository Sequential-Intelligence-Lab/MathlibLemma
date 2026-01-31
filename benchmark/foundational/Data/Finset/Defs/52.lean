import Mathlib

lemma Finset.forall_coe_iff {α} (s : Finset α) (p : α → Prop) :
    (∀ x : s, p x) ↔ ∀ a ∈ s, p a := by
  sorry
