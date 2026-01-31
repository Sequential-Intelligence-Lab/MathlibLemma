import Mathlib

lemma Finset.subset_of_forall_mem {α} {s t : Finset α}
    (h : ∀ ⦃a⦄, a ∈ s → a ∈ t) : s ⊆ t := by
  sorry
