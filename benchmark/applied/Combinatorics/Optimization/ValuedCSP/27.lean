import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma comp_injective (f : β → γ) (g : α → β)
    (hf : Function.Injective f) (hg : Function.Injective g) :
    Function.Injective (fun x => f (g x)) := by
  sorry
