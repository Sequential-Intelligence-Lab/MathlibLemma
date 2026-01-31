import Mathlib

theorem Finset.min'_eq_of_forall_le_iff {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty)
    {a b : α} (ha : a ∈ s) (hb : b ∈ s)
    (h : ∀ x ∈ s, a ≤ x ↔ b ≤ x) :
    a = b := by
  sorry
