import Mathlib

lemma Finset.subset_of_forall {α} {s t : Finset α}
    (h : ∀ a, a ∈ s → a ∈ t) : s ⊆ t := by
  sorry
