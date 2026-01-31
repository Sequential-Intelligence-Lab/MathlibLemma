import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma Finset.disjoint_left' {s t : Finset α} :
    Disjoint s t ↔ ∀ ⦃a⦄, a ∈ s → a ∈ t → False := by
  sorry
