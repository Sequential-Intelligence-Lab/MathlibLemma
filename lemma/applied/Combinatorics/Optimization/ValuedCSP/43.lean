import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma Finset.disjoint_right' {s t : Finset α} :
    Disjoint s t ↔ ∀ ⦃a⦄, a ∈ t → a ∈ s → False := by
  simpa using (Finset.disjoint_right (s := s) (t := t))

/-! ### Multiset lemmas -/