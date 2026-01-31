import Mathlib

lemma Finset.ssubset_of_injective_image {α β} [DecidableEq α] [DecidableEq β]
    {f : α → β} (hf : Function.Injective f)
    {s t : Finset α} (h : s.image f ⊂ t.image f) : s ⊂ t := by
  sorry
