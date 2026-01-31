import Mathlib

theorem Finset.min'_insert_of_ge {α} [LinearOrder α] {a : α} {s : Finset α}
    (hs : s.Nonempty) (h : ∀ x ∈ s, a ≤ x) :
    (insert a s).min' (s.insert_nonempty a) = a := by
  sorry
