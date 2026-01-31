import Mathlib

lemma Finset.eq_empty_of_subset_empty {α} {s : Finset α}
    (h : s ⊆ (∅ : Finset α)) : s = ∅ := by
  -- Use characterization of empty finset via membership
  apply Finset.eq_empty_iff_forall_not_mem.mpr
  intro a ha
  -- From the subset hypothesis, a ∈ s implies a ∈ ∅, contradiction
  have : a ∈ (∅ : Finset α) := h ha
  simpa using this