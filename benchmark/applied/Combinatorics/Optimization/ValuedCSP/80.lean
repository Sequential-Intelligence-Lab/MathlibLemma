import Mathlib

variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma Fintype.card_fun_eq_pow (α β : Type*)
    [Fintype α] [Fintype β] [Fintype (α → β)] :
    Fintype.card (α → β) = (Fintype.card β) ^ (Fintype.card α) := by
  sorry

/-! ### Equiv lemmas -/