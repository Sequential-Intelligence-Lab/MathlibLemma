import Mathlib

theorem Finset.max_eq_coe_max' {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) :
    s.max = (s.max' hs : WithBot α) := by
  sorry
