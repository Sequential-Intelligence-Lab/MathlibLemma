import Mathlib

lemma toLeft_subset_of_forall {α β} {u : Finset (α ⊕ β)} {s : Finset α}
    (h : ∀ a, Sum.inl a ∈ u → a ∈ s) :
    u.toLeft ⊆ s := by
  sorry
