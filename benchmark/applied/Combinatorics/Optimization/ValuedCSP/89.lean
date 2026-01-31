import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma FractionalOperation.exists_ne_of_two_le_card
    {ω : FractionalOperation D m} (hcard : 2 ≤ ω.size) :
    ∃ g₁ g₂, g₁ ∈ ω ∧ g₂ ∈ ω ∧ g₁ ≠ g₂ := by
  sorry
