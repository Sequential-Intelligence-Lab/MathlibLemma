import Mathlib

lemma Finset.subset_of_image_subset {α β} [DecidableEq α] [DecidableEq β]
    {f : α → β} (hf : Function.Injective f)
    {s t : Finset α} (h : s.image f ⊆ t.image f) : s ⊆ t := by
  sorry
