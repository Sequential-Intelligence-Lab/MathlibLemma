import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma support_comp_subset {α β γ} [Zero γ] (f : β → γ) (g : α → β) :
    Function.support (fun x => f (g x)) ⊆ g ⁻¹' Function.support f := by
  sorry
