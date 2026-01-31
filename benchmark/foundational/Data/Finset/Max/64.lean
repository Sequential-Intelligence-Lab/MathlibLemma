import Mathlib

theorem Finset.exists_mem_eq_min' {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) :
    ∃ a ∈ s, a = s.min' hs := by
  sorry
