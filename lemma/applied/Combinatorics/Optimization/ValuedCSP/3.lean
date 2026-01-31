import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma ne_of_lt_of_le [Preorder α] {a b c : α}
    (h₁ : a < b) (h₂ : b ≤ c) (h₃ : c ≤ a) : b ≠ c := by
  -- Assume for contradiction that b = c
  intro hbc
  -- Then from c ≤ a we get b ≤ a
  have hba : b ≤ a := by simpa [hbc] using h₃
  -- From a < b and b ≤ a we derive a < a
  have : a < a := lt_of_lt_of_le h₁ hba
  -- But this contradicts irreflexivity of <
  exact lt_irrefl _ this