import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma Finset.univ_sum_update
    {n} [DecidableEq (Fin n)] [AddCommMonoid β]
    (i : Fin n) (x : β) (f : Fin n → β) :
    (Finset.univ : Finset (Fin n)).sum (fun j => if j = i then x else f j)
      = (Finset.univ.erase i).sum f + x := by
  sorry
