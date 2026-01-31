import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma Equiv.perm_sum_univ
    [AddCommMonoid β] [Fintype α] (e : α ≃ α) (f : α → β) :
    (Finset.univ : Finset α).sum (fun x => f (e x)) =
    (Finset.univ : Finset α).sum f := by
  sorry

/-! ### Matrix-like lemmas (on `Fin` indexed functions) -/
