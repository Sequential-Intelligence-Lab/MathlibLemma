import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma le_of_ne_of_lt [PartialOrder α] {a b : α} (h₁ : a ≠ b) (h₂ : a < b) : a ≤ b := by
  sorry
