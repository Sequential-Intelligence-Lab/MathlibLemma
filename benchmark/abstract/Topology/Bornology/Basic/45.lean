import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.tendsto_cobounded_of_isBounded_image [Bornology α] [Bornology β]
    {f : α → β} {l : Filter α}
    (h : ∀ᶠ s in l.smallSets, ∀ t ⊆ s, IsBounded (f '' t)) :
    Tendsto f l (cobounded β) := by
  sorry
