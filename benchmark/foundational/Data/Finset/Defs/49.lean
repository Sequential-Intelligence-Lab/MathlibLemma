import Mathlib

lemma Finset.forall_mem_subtype_iff {α} (s : Finset α) (p : {a // a ∈ s} → Prop) :
    (∀ x : {a // a ∈ s}, p x) ↔ ∀ a (h : a ∈ s), p ⟨a, h⟩ := by
  sorry