import Mathlib

theorem Finset.max'_eq_of_mem {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty)
    {a b : α} (ha : a ∈ s) (hb : b ∈ s) (hle : ∀ x ∈ s, x ≤ a ↔ x ≤ b) :
    s.max' hs = a ↔ s.max' hs = b := by
  sorry
