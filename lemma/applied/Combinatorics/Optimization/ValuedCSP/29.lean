import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma comp_bijective (f : β → γ) (g : α → β)
    (hf : Function.Bijective f) (hg : Function.Bijective g) :
    Function.Bijective (fun x => f (g x)) := by
  exact hf.comp hg