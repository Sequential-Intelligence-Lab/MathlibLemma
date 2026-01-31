import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma Multiset.eq_of_subset_of_card_le
    {s t : Multiset α} (h₁ : s ≤ t) (h₂ : t.card ≤ s.card) : s = t := by
  sorry
