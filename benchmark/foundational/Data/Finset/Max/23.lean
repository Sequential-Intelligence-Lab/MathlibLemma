import Mathlib

theorem Finset.min'_eq_iff_mem_and_le {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) {a : α} :
    s.min' hs = a ↔ a ∈ s ∧ ∀ b ∈ s, a ≤ b := by
  sorry
