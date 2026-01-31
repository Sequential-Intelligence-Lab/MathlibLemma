import Mathlib

theorem Finset.min'_eq_iff_forall_ge {α} [LinearOrder α] {s : Finset α}
    (hs : s.Nonempty) {a : α} :
    s.min' hs = a ↔ a ∈ s ∧ ∀ b ∈ s, a ≤ b := by
  sorry
