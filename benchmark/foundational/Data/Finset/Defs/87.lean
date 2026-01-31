import Mathlib

lemma Finset.ssubset_of_subset_of_not_forall {α} {s t : Finset α}
    (h₁ : s ⊆ t) (h₂ : ¬ ∀ a ∈ t, a ∈ s) : s ⊂ t := by
  sorry
