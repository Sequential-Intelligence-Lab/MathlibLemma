import Mathlib

lemma Finset.preimage_subset_iff {α β} [DecidableEq α] [DecidableEq β]
    {f : α → β} {s : Finset β} {t : Finset α} :
    t ⊆ s.preimage f
      (by
        intro x hx y hy hxy
        -- we do not prove this; leave as sorry
        sorry
      ) ↔ ∀ a ∈ t, f a ∈ s := by
  sorry