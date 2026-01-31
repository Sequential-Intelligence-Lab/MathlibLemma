import Mathlib

theorem Finset.max'_insert_of_le {α} [LinearOrder α] {a : α} {s : Finset α}
    (hs : s.Nonempty) (h : ∀ x ∈ s, x ≤ a) :
    (insert a s).max' (s.insert_nonempty a) = a := by
  sorry
