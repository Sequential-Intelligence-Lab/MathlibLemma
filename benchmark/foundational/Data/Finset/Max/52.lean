import Mathlib

theorem Finset.exists_between_min'_max' {α} [LinearOrder α] {s : Finset α}
    (hs : s.Nonempty) :
    ∀ x, s.min' hs < x → x < s.max' hs → ∃ y ∈ s, x ≤ y ∧ y ≤ s.max' hs := by
  sorry
