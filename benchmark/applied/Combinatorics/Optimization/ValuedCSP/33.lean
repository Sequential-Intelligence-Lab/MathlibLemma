import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma Finset.card_subtype_eq_filter {s : Finset α} (p : α → Prop) [DecidablePred p]
    [Fintype {x // x ∈ s ∧ p x}] :
    Fintype.card {x // x ∈ s ∧ p x} = (s.filter p).card := by
  sorry