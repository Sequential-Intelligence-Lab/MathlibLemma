import Mathlib

lemma exists_seq_of_forall_finset_exists_monotone {α : Type*}
    (P : α → Prop) (r : α → α → Prop)
    (h : ∀ s : Finset α, (∀ x ∈ s, P x) → ∃ y, P y ∧ ∀ x ∈ s, r x y) :
    ∃ f : ℕ → α, (∀ n, P (f n)) ∧ ∀ m n, m ≤ n → r (f m) (f n) := by
  classical
  sorry
