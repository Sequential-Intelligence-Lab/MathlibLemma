import Mathlib

lemma toRight_subset_of_forall {α β} {u : Finset (α ⊕ β)} {t : Finset β}
    (h : ∀ b, Sum.inr b ∈ u → b ∈ t) :
    u.toRight ⊆ t := by
  sorry
