import Mathlib

variable {α β : Type*}

/-! ### Order / lattice related lemmas -/
lemma Finset.sum_le_sum_of_nonneg
    [DecidableEq α]
    [AddCommMonoid β]
    [Zero β]
    [LE β]
    (s : Finset α) {f g : α → β}
    (hfg : ∀ x ∈ s, f x ≤ g x)
    (hgnn : ∀ x ∈ s, 0 ≤ g x) :
    s.sum f ≤ s.sum g := by
  sorry