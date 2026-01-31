import Mathlib

lemma Finset.exists_mem_subtype_iff {α} (s : Finset α)
    (p : {x // x ∈ s} → Prop) :
    (∃ x : {x // x ∈ s}, p x) ↔ ∃ a, ∃ ha : a ∈ s, p ⟨a, ha⟩ := by
  sorry