import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma support_subset_iff {α β} [Zero β] (f g : α → β) :
    (Function.support f ⊆ Function.support g) ↔
      ∀ x, g x = 0 → f x = 0 := by
  sorry
