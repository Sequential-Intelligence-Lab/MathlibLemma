import Mathlib

theorem Finset.max'_eq_iff_mem_and_le {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) {a : α} :
    s.max' hs = a ↔ a ∈ s ∧ ∀ b ∈ s, b ≤ a := by
  sorry
