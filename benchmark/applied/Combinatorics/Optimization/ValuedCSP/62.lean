import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma Fin.eq_of_veq {n} {i j : Fin n} (h : i.val = j.val) : i = j := by
  sorry
