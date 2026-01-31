import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma Finset.sum_add_distrib' [AddCommMonoid β]
    (s : Finset α) (f g : α → β) :
    s.sum (fun x => f x + g x) = s.sum f + s.sum g := by
  sorry
