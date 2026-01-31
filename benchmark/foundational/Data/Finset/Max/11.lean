import Mathlib

theorem Finset.min'_filter_ge {α} [LinearOrder α] (s : Finset α) (a : α)
    (hs : (s.filter fun x ↦ a ≤ x).Nonempty) :
    a ≤ (s.filter fun x ↦ a ≤ x).min' hs := by
  sorry