import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma Fintype.card_sigma' (α : Type*) (β : α → Type*)
    [Fintype α] [∀ a, Fintype (β a)] :
    Fintype.card (Sigma β) = Finset.univ.sum fun a : α => Fintype.card (β a) := by
  sorry
