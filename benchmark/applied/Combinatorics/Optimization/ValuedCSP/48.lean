import Mathlib

variable {α β γ : Type*}

/-! ### Order / lattice related lemmas -/
lemma Multiset.map_comp (f : β → γ) (g : α → β) (s : Multiset α) :
    s.map (fun x => f (g x)) = (s.map g).map f := by
  sorry