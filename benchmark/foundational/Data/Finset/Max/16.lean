import Mathlib

theorem Finset.max'_unique {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) {a : α}
    (ha : a ∈ s) (hmax : ∀ b ∈ s, b ≤ a) :
    s.max' hs = a := by
  sorry
