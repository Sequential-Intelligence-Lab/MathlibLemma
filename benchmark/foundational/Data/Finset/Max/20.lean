import Mathlib

theorem Finset.max'_eq_of_forall_le_iff {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty)
    {a b : α} (ha : a ∈ s) (hb : b ∈ s)
    (h : ∀ x ∈ s, x ≤ a ↔ x ≤ b) :
    a = b := by
  sorry
