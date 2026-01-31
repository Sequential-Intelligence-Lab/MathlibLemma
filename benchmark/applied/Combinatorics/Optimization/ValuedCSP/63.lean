import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma Fin.forall_iff_univ {n} (p : Fin n → Prop) :
    (∀ i, p i) ↔ ∀ i ∈ (Finset.univ : Finset (Fin n)), p i := by
  sorry
