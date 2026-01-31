import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma le_of_lt_of_le' [Preorder α] {a b c : α} (h₁ : a < b) (h₂ : b ≤ c) : a ≤ c := by
  exact le_trans (le_of_lt h₁) h₂